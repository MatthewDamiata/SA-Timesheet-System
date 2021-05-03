Feature: Login Page
	As a developer
	I want SA employees to be able to login
	So that they can access their account
  
Background: authorization and user in database 

  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |

@omniauth_test3 
Scenario: login
  Given I am on the landing page
  And I press "Register or Login With GitHub"
	#And I am on the timetable page
  Then I will see "Welcome back Tester Suny! You have logged in via github."
  And I am on the timetable page
  

