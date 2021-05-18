Feature: Print Timesheets
	As an employee
	I want to be able to print my time table
  So that I can sign and submit my time table

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


@omniauth_test16
Scenario: I print my time
  Given I am logged into timesheets
  When I go to the timetable page
	Then I should see "Print Timesheet"
  Then I follow "Print Timesheet"
  Then I should be on the timetable page
  

  
  