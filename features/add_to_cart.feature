@boots @highPriority @cart
Feature: Add To Cart

  Scenario Outline: Add boots to cart without making selections
    Given I am on a page for <type> boots
    And <number_of_selections> selections have been omitted
    When I click 'Add to Cart'
    Then <number_of_notifications> notification appears on the page

 Examples:
|           type          | number_of_selections | number_of_notifications| 
|  UA Speed Freek Bozeman |          2           |           2            | 
|      UA Glenrock Mid    |          1           |           1            | 