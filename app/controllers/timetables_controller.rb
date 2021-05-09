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
		id = params[:id] # retrieve movie ID from URI route
    @timetable = Timetable.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  # GET /timetables/new
  def new
		
	  #@clicked = true #true=>if clickd, disable button, false=>enable button
		@timetable= Timetable.create!(:time_in=>DateTime.now())	
	
		flash[:notice] = "You have successfully clocked in!"
		redirect_to timetable_path(@timetable)
  end

  # GET /timetables/1/edit
  def edit
	end
	
	def clock_out
		@timetable = Timetable.find(params[:id])
		@timetable.update(time_out: DateTime.now())
		redirect_to edit_timetable_path(@timetable)
		
	end
	
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
      redirect_to timetables_path, notice: 'Timetable was successfully updated.'
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
      params.require(:timetable).permit(:time_in, :time_out, :notes, :user_id )
    end
end
