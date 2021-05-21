Feature: Filter by date
	As an employee
	I want to be able to see my hours in a certain date range
  So that I can print my timesheet on payday

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


  Given the following timetables exist:
  |id            | time_in              | time_out              | notes       |user_id|
  |7400 | 2021-05-12 05:20:48  | 2021-05-12 09:25:12  | big job     |   1   |

@omniauth_test14
Scenario: I want to see the filtered timetables
  Given I am logged into timesheets
  When I go to the timetable page
  Then I should see "big job"
  Then I enter the inclusive from and to date
  Then I press "Refresh"
  And I should see "big job"
  
@omniauth_test15
Scenario: I do not want to see the filtered timetables
  Given I am logged into timesheets
  When I go to the timetable page
  Then I should see "big job"
  Then I enter the exclusive from and to date
  Then I press "Refresh"
  And I should not see "big job"
  
  
  