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

Then /the table should be popluated with a starting entry with current time/ do
	current_time = DateTime.now()
	current_time.strftime("%Y-%m-%d %h:%M")
	expect(page.body).to have_content(current_time)
end



