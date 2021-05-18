Feature: Total shifts and hours
	As an employee
	I want to be able to see how much I worked
  So that I know I'm being paid accordingly

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


  Given the following timetables exist:
  | time_in              | time_out             | notes     | user_id

@omniauth_test10
Scenario: I see the totals table
  Given I am logged into timesheets
  When I go to the timetable page
	Then I should see "Total Hours"
  And I should see "Total Shifts"
  
@omniauth_test11  
Scenario: I update totals table
  Given I am logged into timesheets
  When I go to the timetable page
  Then I should see "Total Hours 0"
  And I should not see "Total Hours 1"
  Then I follow "Clock In"
  Then I follow "Clock Out"
  Then I follow "Back to Dashboard"
  Then I should see "Total Hours 1"
  And I should not see "Total Hours 2"
  Then I follow "Clock In"
  Then I follow "Clock Out"
  Then I follow "Back to Dashboard"
  Then I should see "Total Hours 2"
  
  