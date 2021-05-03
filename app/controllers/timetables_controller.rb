class TimetablesController < ApplicationController
  before_action :set_timetable, only: [:show, :edit, :update, :destroy]

#   # GET /timetables
#   def index
#     @timetables = Timetable.all
#   end

#   # GET /timetables/1
#   def show
#   end

#   # GET /timetables/new
#   def new
#     @timetable = Timetable.new
#   end

#   # GET /timetables/1/edit
#   def edit
#   end

#   # POST /timetables
#   def create
#     @timetable = Timetable.new(timetable_params)

#     if @timetable.save
#       redirect_to @timetable, notice: 'Timetable was successfully created.'
#     else
#       render :new
#     end
#   end

#   # PATCH/PUT /timetables/1
#   def update
#     if @timetable.update(timetable_params)
#       redirect_to @timetable, notice: 'Timetable was successfully updated.'
#     else
#       render :edit
#     end
#   end

#   # DELETE /timetables/1
#   def destroy
#     @timetable.destroy
#     redirect_to timetables_url, notice: 'Timetable was successfully destroyed.'
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_timetable
#       @timetable = Timetable.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
#     def timetable_params
#       params.require(:timetable).permit(:start, :end, :user_id, :notes)
#     end
end
