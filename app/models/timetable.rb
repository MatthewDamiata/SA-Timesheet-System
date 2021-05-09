class Timetable < ActiveRecord::Base
	def self.find_most_recent
		Timetable.last
	end
	
	def out
# 		@timetable.time_out = DateTime.now()
	end
end
