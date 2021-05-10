Feature: Delete Entry
	As a SA employee
	I want to be able to delete my hours
	In case I clocked in twice
  
Background: timetable seeds

   Given the following authorizations exist:
  | provider|uid    |user_id|
  | github  |123456 |1      | 
  
  Given the following users exist:
  |name        | email                 |
  |Tester Suny | stester@binghamton.edu |
  
  Given the following timetables exist:
  | time_in              | time_out             | notes       |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      |

@omniauth_test8
Scenario: User deletes entry
	Given I am logged into timesheets
	When I go to the timetable page
	When I follow "Delete"
	Then I should not see "big job"
  
  
  

	
