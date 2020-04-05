Feature: Home Page
 
As a guard-app user, 
So that I can choose which actions I would like to take
I need a homepage that provides links to various functionality once I log in successfully.

Background: accounts exist in database
  Given the following accounts exist:
  | last_name     | first_name  | cwid       | phone_number        | email               | password | 
  | Michel        | Brendan     | 10602474   | 248-877-7209        | bmichel@citadel.edu | p@ssw0rd | 
  And I have accessed ridefinder as "10602474"
  And I am on the home page

Scenario: Links are visible
  Then I should see "Log Out"

Scenario: Logout from home page
  When I follow "Logout"
  Then I should be on the login page
  