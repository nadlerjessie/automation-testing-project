@boots @highPriority @navigation
Feature: Boot Navigation

  Scenario: Navigate to Men's Boots on Zappos
    Given I am on the Zappos home page
    When I click Shop Men's > Boots
    Then The selections header only lists "Shoes", "Men", and "Boots"