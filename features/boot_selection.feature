@boots @highPriority @selection
Feature: Boot Selection

  Background:
    Given I am on the Zappos Men's Under Armour Boots page

  Scenario: Select UA Glenrock Mid Boots in steel, which are available
    When I select the steel boots
    Then I will be on the Steel Shadow Sonic Yellow boot's page

