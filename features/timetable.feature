Feature: Dashboard Page
	As a developer
	I want SA employees to be able to clock their hours
	So that they can record time worked and print out timesheet

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
    
  Scenario: find movie with same director
    Given I am on the details page for "Star Wars"
    When  I follow "Find Movies With Same Director"
    Then  I should be on the Similar Movies page for "Star Wars"
    And   I should see "THX-1138"
    But   I should not see "Blade Runner"

  Scenario: can't find similar movies if we don't know director (sad path)
    Given I am on the details page for "Alien"
    Then  I should not see "Ridley Scott"
    When  I follow "Find Movies With Same Director"
    Then  I should be on the home page
    And   I should see "'Alien' has no director info"
	
	