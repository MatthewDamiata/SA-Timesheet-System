class Timetable < ActiveRecord::Base
	def self.filter_dates(start_date,end_date)
		Timetable.where({:user_id => myid, time_in: final_from_date..(final_to_date + 1.day) })
	end
end
