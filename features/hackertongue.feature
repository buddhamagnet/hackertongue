Feature: Hackertongue
  In order to find out my favourite hacker's favourite language
  As a user
  I want to be able to do that via a form

Background:
  Given I am on the homepage
  Then the page title should be "What's your favourite hacker's favourite language?"
  And I should see "Give us a github user, and we'll give you languages!"

Scenario: Known user
  When I fill in "Github username" with "buddhamagnet"
  And I hit "Go!"
  And I should see "Ruby"

Scenario: Bogus user
  When I fill in "Github username" with "buddaaaaaaaaahamagnet"
  And I hit "Go!"
  Then I should see "That hacker doesn't exist baby!"

Scenario: Private user
  When I fill in "Github username" with "EconomistDigitalSolutions"
  And I hit "Go!"
  Then I should see "Sorry that hacker has no public repos"