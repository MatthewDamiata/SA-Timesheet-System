class Timetable < ActiveRecord::Base
	def self.find_most_recent
		Timetable.last
	end
end
