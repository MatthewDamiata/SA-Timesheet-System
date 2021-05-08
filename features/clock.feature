Feature: Dashboard Page
	As a developer
	I want SA employees to be able to clock their hours

Background: timetable seeds

  Given the following timetables exist:
  | time_in              | time_out             | notes       |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      |
  | 2019-04-20 05:20:48  | 2019-04-20 05:50:48  | fundraiser|  
  | 2021-01-25 05:40:58  | 2021-01-25 08:40:58  | meeting   |   
  | 2021-02-20 05:10:48  | 2021-02-28 05:10:48  | test       |  
  
  Scenario:  clocks in
    When I go to the timetable page
    And  I press "Clock in"
    Then the table should be popluated with a starting entry with current time

  Scenario: clocks out
    When I go to the timetable page
    And  I press "Clock out"
    Then I should be on the edit timetable page
    
	
	