Feature: Dashboard Page
	As a developer
	I want SA employees to see and print their worked hours

Background: timetable seeds

  Given the following movies exist:
  | time_in              | time_out             | notes        | user_id    |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      | 1          |
  | 2019-04-20 05:20:48  | 2019-04-20 05:50:48  | fundraiser   | 1          |
  | 2021-01-25 05:40:58  | 2021-01-25 08:40:58  | meeting      | 1          |
  | 2021-02-20 05:10:48  | 2021-02-28 05:10:48  | test         | 1          |
  
  Scenario: user clocks in
    When I go to the timetable page
    And  I press "Clock in"
    Then the table should be popluated with a starting entry with current time

  Scenario: user clocks out
    When I go to the timetable page
    And  I press "Clock out"
    Then the table should be popluated with a ending entry with current time
    
	
	