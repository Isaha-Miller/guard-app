# Populate accounts to db
require 'digest'

Given /the following accounts exist/ do |users_table|
end

Given /^I have accessed guardapp as "(.*)"$/ do |cwid|
 # visit "/guardapp/login/"
 # fill_in("CWID", :with => cwid)
 # fill_in("Password", :with => "P@ssw0rd")
 # click_button("Login")
end

Given /^I have logged into guardapp as "(.*)", "(.*)"$/ do |cwid, password|
 # visit "/guardapp/login/"
 # fill_in("CWID", :with => cwid)
 # fill_in("Password", :with => password)
 # click_button("Login")
end

Given /^(?:|I )am on (.+)$/ do |page_name|
 # visit path_to(page_name)
end

When /I fill in the required fields/ do
 # step %Q{I fill in "First Name" with "Brenden"}
 # step %Q{I fill in "Last Name" with "Michel"}
 # step %Q{I fill in "Password" with "P@ssw0rd"}
 # step %Q{I fill in "Confirm Password" with "P@ssw0rd"}
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I follow {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have accessed ridefinder as {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be on the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I press {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end