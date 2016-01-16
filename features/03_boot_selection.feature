@boots @highPriority @selection
Feature: Boot Selection

  Scenario Outline: Select UA Glenrock Mid Boots
    Given I am on the Zappos Men's Under Armour Boots page
    When I select the <type> boots
    Then I will be on the <page> page

 Examples:
  |                       type                         |               page                  |
  | UA Glenrock Mid Steel Shadow Sonic Yellow |  UA Glenrock Mid Steel Shadow Sonic Yellow   |
  | UA Glenrock Mid Cadet Pirate Blue Stoneleigh Taupe |              same web               |


