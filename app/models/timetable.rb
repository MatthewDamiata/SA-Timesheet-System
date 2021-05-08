class Timetable < ActiveRecord::Base
	def self.find_most_recent
		Timetable.where(:user_id).last
	end
end
