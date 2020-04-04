Feature: Admin Home Page
 
As a ride-finder administrator, 
So that I can choose which actions I would like to take
I need a homepage that provides links to various functionality once I log in successfully.

Background: accounts exist in database
  Given the following accounts exist:
  | last_name     | first_name  | cwid       | phone_number        | email               | password | 
  | Michel        | Brendan     | 10602474   | 248-877-7209        | bmichel@citadel.edu | p@ssw0rd | 
#test when an administrator logs in to admin_home 
Scenario: Login as ADMIN
  Given I am on the "Admin Home" page
  Then I should see "Logout"

Scenario: Logout from admin home page
  Given I am on the "Admin Home" page
  When I follow "Logout"
  Then I should be on the login page