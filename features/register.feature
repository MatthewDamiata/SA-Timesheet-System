Feature: Register Page
	As a developer
	I want SA employees to be able to register
	So that they can create an account
	
Background: profiles in database

  Given the following profiles exists:
  | privilege|org|org2|manager_id|grad|user_id|
  | 0        | 0 | 1  |420       |0   |       |    
  
@omniauth_test1 
Scenario: User clicks on Register button
  Given I am on the landing page
  And I press "Register"
	Then I will see "Welcome Tester Suny! You have signed up via github."  
  #Then I am on the Timesheets edit Profile Page for 'Tester SUNY'
	And I will see "Editing profile" 
 
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
  Then I will see "ActiveRecord::RecordInvalid: Validation failed: Email must be for Binghamton University"
  And I am on the landing page

	
	
	