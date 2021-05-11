Feature: Dashboard Page
	As a developer
	I want SA employees to be able to clock their hours
  So they can get paid accordingly

Background: timetable seeds
  Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |


  Given the following timetables exist:
  | time_in              | time_out             | notes     | user_id
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job   |1
  | 2019-04-20 05:20:48  | 2019-04-20 05:50:48  | fundraiser|1
  | 2021-01-25 05:40:58  | 2021-01-25 08:40:58  | meeting   |1  
  | 2021-02-20 05:10:48  | 2021-02-28 05:10:48  | test      |1
  

@omniauth_test5
Scenario: user clocks in
  Given I am logged into timesheets'
	Given the current time is "2021-02-20 05:10:48"
  When I go to the timetable page
  And  I follow "Clock In"
	Then I should be on the show timetable page for "2021-02-20 05:10:48"
	


    
	
	