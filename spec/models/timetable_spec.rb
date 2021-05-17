require 'rails_helper'

RSpec.describe Timetable, type: :model do
	describe "filter_dates" do 
		it "is a class method" do
			expect(Timetable).to respond_to(:filter_dates)
		end
		
	end
	
	describe "get_user_timetables" do
		it "is a class method" do
			expect(Timetable).to respond_to(:get_user_timetables)
		end
	end
end
