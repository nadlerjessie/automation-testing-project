@boots @highPriority @selection
Feature: Boot Selection

  Scenario Outline: Select UA Glenrock Mid Boots
    Given I am on the Zappos Men's Under Armour Boots page
    When I select the <color> boots
    Then I will be on the <page> page

 Examples:
    | color |               page                  |
    | steel |  Steel Shadow Sonic Yellow boot's   |
    |  blue |              same web               |