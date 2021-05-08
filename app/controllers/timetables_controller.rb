require 'date'
class TimetablesController < ApplicationController
  before_action :set_timetable, only: [:show, :edit, :update, :destroy]
	#@clicked =false
  # GET /timetables
  def index
    @timetables = Timetable.all
  end

  # GET /timetables/1
  def show
  end

  # GET /timetables/new
  def new
		
	  #@clicked = true #true=>if clickd, disable button, false=>enable button
		@timetable= Timetable.create!(:time_in=>DateTime.now())	
	
		@recent = @timetable
		flash[:notice] = "You have successfully clocked in!"
		redirect_to timetables_path
  end

  # GET /timetables/1/edit
  def edit
		#@clicked = false 
	#	@timetable = Timetable.find params[:id]
  end
	
# 	def recent_timetable
#    # @movie = Movie.find params[:id]
#     @recent = Timetable.find_most_recent
# #     if @director_movies[:director].blank?
# #       flash[:warning] = "'#{@movie.title}' has no director info."
# #       redirect_to movies_path
# 		redirect_to timetable_edit_path
#     end

  # POST /timetables
  def create
    @timetable = Timetable.new(timetable_params)

    if @timetable.save
      redirect_to @timetable, notice: 'Timetable was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /timetables/1
  def update
    if @timetable.update(timetable_params)
      redirect_to @timetable, notice: 'Timetable was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /timetables/1
  def destroy
    @timetable.destroy
    redirect_to timetables_url, notice: 'Timetable was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def timetable_params
      params.require(:timetable).permit(:start, :end, :user_id, :notes)
    end
end
