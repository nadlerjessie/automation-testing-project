@boots @highPriority @notifyForm @fillIn
Feature: 'Notify Me' Form

  Scenario: Fill in and submit 'Notify Me' form
    Given I am on the 'Notify Me' form
    When I fill out form
    And I click, 'Notify Me'
    Then The page says, 'Thank You'
    And Has content from form