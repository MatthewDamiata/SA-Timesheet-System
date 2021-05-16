Feature: Filtering Dates
	As an employee
	I want to filter out dates
	So that I get paid for the right amount days in the pay period

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


  Given the following timetables exist:
 |id | time_in                  | time_out             | notes        | user_id|
 |180| 2021-05-11 13:15:11     |  2021-05-11 15:15:11  | note1            |  1       |
 |181| 2021-05-12 13:15:11     |  2021-05-12 15:15:11  |  note2        |  1       |
 |182| 2021-06-12 13:15:11     |  2021-06-12 15:15:11  | note3            |  1       |
  
  
@omniauth_test13
Scenario: Clock Out
	Given I am logged into timesheets
  When I go to the timetable page
	Given I filter the dates from "4/1/2021" to "5/20/2021"
	When I press "Refresh"
	Then I should see "note1"
	But I should not see "note3"
