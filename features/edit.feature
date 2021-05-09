Feature: Edit Timesheet
	As a SA employee
	I want to be able to edit my timesheets 
	so could fix my mistakes
	
Given the following timetables exist:
  | time_in              | time_out             | notes       |
  | 2021-04-20 05:20:48  | 2021-04-20 05:40:48  | big job      |
  | 2019-04-20 05:20:48  | 2019-04-20 05:50:48  | fundraiser|  
  | 2021-01-25 05:40:58  | 2021-01-25 08:40:58  | meeting   |   
  | 2021-02-20 05:10:48  | 2021-02-28 05:10:48  | test       |  
	
	

Scenario: User edits timesheets
	When I go to the timetable page
	And I press edit
	Then I should be on the edit timetable page
  When I fill in "Notes" with "Did my work"
	And I press "Save"
	Then I should be on the timetable page
	And I should see "Did my work"

	
