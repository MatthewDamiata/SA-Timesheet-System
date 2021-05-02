Given /the following profiles exist/ do |profiles_table|
  profiles_table.hashes.each do |profile|
    Profile.create profile
  end 
end



Then /^I will see "([^"]*)"$/ do |message|
  #puts page.body # <---
  expect(page.body).to have_content(message)
end

Given /the following authorizations exist/ do |authorizations_table|
  authorizations_table.hashes.each do |authorization|
    Authorization.create! authorization
    puts 'create authorization'
    p Authorization.all
  end
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create! user
    puts 'create user'
    p User.all
  end
end
