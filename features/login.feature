Feature: Login

  As a Citadel student
  So that I can access my account
  I want to create be able to login

Background: accounts exist in database
  Given the following accounts exist:
  | last_name     | first_name  | cwid       | phone_number        | email               | password | 
  | Michel        | Brendan     | 10602474   | 248-877-7209        | bmichel@citadel.edu | p@ssw0rd | 

Scenario: Login
  Given I am on the "Login" page
  When I fill in "CWID" with "10602474"
  And I fill in "Password" with "p@ssw0rd"
  And I press "Login"
  Then I should be on the "Home" page
  
Scenario: Should get error when I try to log in with out a password
  Given I am on the "Login" page
  When I fill in "CWID" with "10672463"
  And I press "Login"
  Then I should be on the "Login" page
  And I should see "The credentials you have entered were not correct or recognized. Please try again."
  
Scenario: Should get error when I try to log in without a cwid or password
  Given I am on the "Login" page
  And I press "Login"
  Then I should be on the "Login" page
  And I should see "The credentials you have entered were not correct or recognized. Please try again."
