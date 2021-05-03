# require 'rails_helper'

# RSpec.describe "timetables/index", type: :view do
#   before(:each) do
#     assign(:timetables, [
#       Timetable.create!(
#         :start => "Start",
#         :end => "End",
#         :user_id => "User",
#         :notes => "Notes"
#       ),
#       Timetable.create!(
#         :start => "Start",
#         :end => "End",
#         :user_id => "User",
#         :notes => "Notes"
#       )
#     ])
#   end

#   it "renders a list of timetables" do
#     render
#     assert_select "tr>td", :text => "Start".to_s, :count => 2
#     assert_select "tr>td", :text => "End".to_s, :count => 2
#     assert_select "tr>td", :text => "User".to_s, :count => 2
#     assert_select "tr>td", :text => "Notes".to_s, :count => 2
#   end
# end
