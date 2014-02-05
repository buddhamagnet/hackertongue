Feature: Hackertongue
  In order to find out my favourite hacker's favourite language
  As a user
  I want to be able to do that via a form

Scenario: Landing page content
  Given I am on the homepage
  Then the page title should be "What's your favourite hacker's favourite language?"
  And I should see "Give us a github user, and we'll give you languages!"
  When I fill in "Github username" with "buddhamagnet"
  And I hit "Go!"
  Then I should see "Give us a github user, and we'll give you languages!"
  And I should see "Ruby"
