Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |profile|
    Profile.create profile
  end 
end


Then /^I will see "([^"]*)"$/ do |message|
  #puts page.body # <---
  expect(page.body).to have_content(message)
end