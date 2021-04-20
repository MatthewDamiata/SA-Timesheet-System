Feature: Register Page
	As a developer
	I want SA employees to be able to register
	So that they can create an account
  
@omniauth_test1 
Scenario: User clicks on Register button
  Given I am on the landing page
  And I press "Register"
  Then I am on Timesheets new Profile page
  And I should see message "Welcome Tester Suny! You have signed up via GitHub."
 
#Scenario: User is on register page
#  When I go to the login page
#  Then I should see "Register Here"
#  Then I should see "Email:"
#  Then I should see "Password:"
#  Then I should see "Confirm Password:"
#  Then I should see "Register"
@omniauth_test2 
Scenario:  Can't Register without SUNY ID
  Given I am on the landing page
  And I press "Register"
  Then I should see message "Only Students and Staff belonging to SUNY Binghamton can register for this app"

	
	
	