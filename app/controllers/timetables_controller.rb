require 'date'
class TimetablesController < ApplicationController
	before_action :set_timetable, only: [:show, :edit, :update, :destroy]
 
  def print
    flash[:notice] = "You successfully printed your timesheet. Please sign and deliver to your manager."
    p "sup"
  end
  
  def index
    myid = current_user.id
    if params[:timetable] != nil
      fromyear = params[:timetable]["fromdate(1i)"]
      toyear = params[:timetable]["todate(1i)"]
      frommonth = params[:timetable]["fromdate(2i)"]
      tomonth = params[:timetable]["todate(2i)"]
      fromday = params[:timetable]["fromdate(3i)"]
      today = params[:timetable]["todate(3i)"]
      final_from_date = DateTime.new(fromyear.to_i, frommonth.to_i, fromday.to_i)
      final_to_date = DateTime.new(toyear.to_i, tomonth.to_i, today.to_i) 
      @timetables = Timetable.filter_dates(final_from_date,final_to_date,myid)
      @fromdate = final_from_date
      @todate  = final_to_date
    else
      @timetables = Timetable.get_user_timetables(myid)
    end
		convert_time
  end

  # GET /timetables/1
  def show
		id = params[:id] # retrieve movie ID from URI route
    @timetable = Timetable.find(id) # look up movie by unique ID
  end

  # GET /timetables/new
  def new
    @clocked_in = 1
		
	  @timetable= Timetable.create!(time_in: DateTime.now() - 4.hour, user_id: current_user.id)

	  #@clicked = true #true=>if clicked, disable button, false=>enable button
    #@timetable= Timetable.create!(:time_in=>DateTime.now())	
	
    flash[:notice] = "You have successfully clocked in!"
		redirect_to timetables_path
  end

  # GET /timetables/1/edit
  def edit
		@timetable = Timetable.find(params[:id])
		if @timetable.time_out == nil
			@timetable.update(time_out: DateTime.now() - 4.hour)
      @clocked_in = 0
		end
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
    end
  end

  # DELETE /timetables/1
  def destroy
    @timetable.destroy
		flash[:notice]= 'Timetable was successfully destroyed.'
    redirect_to timetables_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end
	  def convert_time
			@total_days = @timetables.size
			@total_hours = 0
			temp = 0
			@found_clocked = 0
			@timetables.each do |x| 
				if x.time_out == nil
					@found_clocked = 1
				end
				if x.time_out != nil and x.time_in != nil
					temp = (x.time_out.to_time - x.time_in.to_time)
					@total_hours += (temp / 3600)
				end
			end
			@total_hours = @total_hours.round(2)
		end

    # Only allow a trusted parameter "white list" through.
    def timetable_params
      params.require(:timetable).permit(:time_in, :time_out,:notes, :user_id )
    end
  
	  def sort_by_date
		  myid = current_user.id
			fromyear = params[:timetable]["fromdate(1i)"]
      toyear = params[:timetable]["todate(1i)"]
      frommonth = params[:timetable]["fromdate(2i)"]
      tomonth = params[:timetable]["todate(2i)"]
      fromday = params[:timetable]["fromdate(3i)"]
      today = params[:timetable]["todate(3i)"]
      final_from_date = DateTime.new(fromyear.to_i, frommonth.to_i, fromday.to_i)
      final_to_date = DateTime.new(toyear.to_i, tomonth.to_i, today.to_i) 
      @timetables = Timetable.where({:user_id => myid, time_in: final_from_date..(final_to_date + 1.day) })
      @fromdate = final_from_date
      @todate  = final_to_date
		end
  
end