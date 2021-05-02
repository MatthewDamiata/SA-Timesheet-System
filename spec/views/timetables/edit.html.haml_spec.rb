# require 'rails_helper'

# RSpec.describe "timetables/edit", type: :view do
#   before(:each) do
#     @timetable = assign(:timetable, Timetable.create!(
#       :start => "MyString",
#       :end => "MyString",
#       :user_id => "MyString",
#       :notes => "MyString"
#     ))
#   end

#   it "renders the edit timetable form" do
#     render

#     assert_select "form[action=?][method=?]", timetable_path(@timetable), "post" do

#       assert_select "input#timetable_start[name=?]", "timetable[start]"

#       assert_select "input#timetable_end[name=?]", "timetable[end]"

#       assert_select "input#timetable_user_id[name=?]", "timetable[user_id]"

#       assert_select "input#timetable_notes[name=?]", "timetable[notes]"
#     end
#   end
# end
