Feature: Edit Timesheet
	As a SA employee
	I want to be able to edit my timesheets 
	so could fix my mistakes
  
Background: timetable seeds
  
  Given the following timetables exist:
  | time_in              | time_out             | notes       |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      |
 
Scenario: User edits timesheets
	When I go to the timetable page
	When I follow "Edit"
	Then I should be on the edit timetable page
  When I fill in "Notes" with "Did my work"
	And I press "Save"
	Then I should be on the timetable page
	And I should see "Did my work"
  
  
  

	
