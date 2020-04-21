Feature: Roster Page
  
As a cadet 
To see if I have guard duty
I need the completed roster to populate in a more compact view.

Scenario: access roster page
	Given I see Home page
	When I click on Roster tab
	Then I should see Roster page

Scenario: view roster
	Given I see Roster page
	Then I should see the Current Roster