Feature: Login Page
	As a developer
	I want SA employees to be able to login
	So that they can access their account
  
Background: authorization and user in database  # <---- Add this block

  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester SUNY| stester@binghamton.edu |

@omniauth_test3  # <---- Modify this
Scenario: login
  Given I am on the landing page
  And I press "Register or Login with GitHub"
  Then I will see "Welcome back Tester SUNY! You have logged in via github." # <---- modify
  #And I am on the RottenPotatoes Home Page
  #And I will see "All Movies"

