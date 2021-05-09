Feature: Delete Entry
	As a SA employee
	I want to be able to delete my hours
	In case I clocked in twice
  
Background: timetable seeds
  
  Given the following timetables exist:
  | time_in              | time_out             | notes       |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      |
 
Scenario: User deletes entry
	When I go to the timetable page
	When I follow "Delete"
	Then I should not see "big job"
  
  
  

	
