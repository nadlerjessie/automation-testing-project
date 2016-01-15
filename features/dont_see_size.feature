@boots @highPriority @notify
Feature: Don't See Your Size Link

  Scenario: Select "Don't see your size?" link
    Given I am on the page for a pair of boots
    When I click "Don't see your size?"
    Then A new window, 'Notify Me!', opens