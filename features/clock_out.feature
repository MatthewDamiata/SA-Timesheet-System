Feature: Clock_out button
	As an employee
	I want SA employees to be able to clock out
  So that I can have the correct amount of hours worked

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


  Given the following timetables exist:
 |id | time_in                  | time_out             | notes        | user_id|
 |100 | 2021-05-11 13:15:11     |                      |             |  1      |
   
@omniauth_test6
Scenario: Clock Out
	Given I am logged into timesheets
  When I go to the timetable page
  And  I follow "Clock Out"
  Then I should be on the edit timetable page for "100"
	Then I should see "Back to Dashboard"
	




    
	
	