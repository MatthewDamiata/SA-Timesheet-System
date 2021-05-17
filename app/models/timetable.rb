class Timetable < ActiveRecord::Base
	def self.filter_dates(start_date,end_date, myid)
		Timetable.where({:user_id => myid, time_in:start_date..(end_date + 1.day) })
	end
	def self.get_user_timetables(myid)
		Timetable.where({:user_id => myid})
	end
end
