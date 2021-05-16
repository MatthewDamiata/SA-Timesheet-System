class Timetable < ActiveRecord::Base
	def self.filter_dates(start_date,end_date)
   Timetable.where("time_out >= start_date_date AND time_out <= end_date")
	end
end
