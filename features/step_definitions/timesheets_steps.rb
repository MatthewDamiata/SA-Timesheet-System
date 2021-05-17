require 'date'

Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |profile|
    Profile.create profile
  end 
end

Given /the following timetables exist/ do |timetables_table|
  timetables_table.hashes.each do |timetable|
    Timetable.create timetable
  end
end

Then /^I will see "([^"]*)"$/ do |message|
  expect(page.body).to have_content(message)
end





Given /the following authorizations exist/ do |authorizations_table|
  authorizations_table.hashes.each do |authorization|
    Authorization.create! authorization
   
  end
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create! user
  
  end
end


Given /I am logged into timesheets/ do
  steps %Q{
    Given I am on the landing page  
		And I will see "Hello!"
    And I press "Register or Login With GitHub"
    And I am on the timetable page
    }
end

Given /the current time is "([^"]*)"$/ do |date|
	
  
end

Given /enter the inclusive from and to date/ do 
  find('#timetable_fromdate_1i').find(:xpath, 'option[1]').select_option
  find('#timetable_fromdate_2i').find(:xpath, 'option[2]').select_option
  find('#timetable_fromdate_3i').find(:xpath, 'option[3]').select_option
  find('#timetable_todate_1i').find(:xpath, 'option[8]').select_option
  find('#timetable_todate_2i').find(:xpath, 'option[2]').select_option
  find('#timetable_todate_3i').find(:xpath, 'option[3]').select_option
end

Given /enter the exclusive from and to date/ do 
  find('#timetable_fromdate_1i').find(:xpath, 'option[8]').select_option
  find('#timetable_fromdate_2i').find(:xpath, 'option[2]').select_option
  find('#timetable_fromdate_3i').find(:xpath, 'option[3]').select_option
  find('#timetable_todate_1i').find(:xpath, 'option[8]').select_option
  find('#timetable_todate_2i').find(:xpath, 'option[4]').select_option
  find('#timetable_todate_3i').find(:xpath, 'option[3]').select_option
end

Given /I filter the dates from "([^"]*)" to "([^"]*)"/ do |start_time, end_time|
	 DateTime.strptime(start_time,"%m/%d/%Y")
   DateTime.strptime(end_time,"%m/%d/%Y") 
end

Then /the current time/ do 
	current_time = DateTime.now()
	current_time.strftime("%Y-%m-%d %h:%M")
	p current_time
	expect(page.body).to have_content(current_time)
end




