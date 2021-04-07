Feature: Login Page
	As a developer
	I want SA employees to be able to login
	So that they can access their account
  
Scenario: User is on login page
  When I go to the login page
  Then I should see "Login Here"
  Then I should see "Email:"
  Then I should see "Password:"
  Then I should see "Login"
  