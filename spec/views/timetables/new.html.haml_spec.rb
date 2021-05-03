# require 'rails_helper'

# RSpec.describe "timetables/new", type: :view do
#   before(:each) do
#     assign(:timetable, Timetable.new(
#       :start => "MyString",
#       :end => "MyString",
#       :user_id => "MyString",
#       :notes => "MyString"
#     ))
#   end

#   it "renders new timetable form" do
#     render

#     assert_select "form[action=?][method=?]", timetables_path, "post" do

#       assert_select "input#timetable_start[name=?]", "timetable[start]"

#       assert_select "input#timetable_end[name=?]", "timetable[end]"

#       assert_select "input#timetable_user_id[name=?]", "timetable[user_id]"

#       assert_select "input#timetable_notes[name=?]", "timetable[notes]"
#     end
#   end
# end
