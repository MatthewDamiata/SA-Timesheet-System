Feature: Login Page
	As a developer
	I want SA employees to be able to register
	So that they can create an account
  
Scenario: User clicks on Register button
  When I go to the landing page
	When I press "Register"
  Then I should be on the register page
    
  
Scenario: User is on login page
  When I go to the login page
  Then I should see "Register Here"
  Then I should see "Email:"
  Then I should see "Password:"
  Then I should see "Confirm Password:"
  Then I should see "Register"