Feature: Landing Page
	As a developer
	I want SA employees to be greeted when they visit the site
	So that they have a good shift
	
	Scenario: User see the landing page
		When I go to the landing page
		Then I should see "Login or Register"
	
	Scenario: User clicks on Login button
	  When I go to the landing page
		When I press "Login"
		Then I should be on the login page
		
	Scenario: User clicks on Register button
	  When I go to the landing page
		When I press "Register"
		Then I should be on the register page
	
