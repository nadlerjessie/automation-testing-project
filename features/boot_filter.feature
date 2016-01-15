@boots @highPriority
Feature: Boot Filter

  Scenario: Filter to find Under Armour Men's Boots
    Given I am on the Zappos Men's Boots page
    When I select Under Armour from Brands
    Then The selections header only lists "Shoes", "Men", "Boots", and "Under Armour"