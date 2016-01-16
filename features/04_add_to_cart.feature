@boots @highPriority @cart
Feature: Add To Cart

  Scenario Outline: Add boots to cart without making selections
    Given I am on a page for <type> boots
    And <selection_type> selection has been omitted
    When I click 'Add to Cart'
    Then <notification> appears on the page

 Examples:
|                      type                      | selection_type |     notification     | 
|  UA Speed Freek Bozeman Uniform Black Velocity |      size      | Please select a size | 
|  UA Speed Freek Bozeman Uniform Black Velocity |      width     | Please select a width| 
|    UA Glenrock Mid Steel Shadow Sonic Yellow   |      size      | Please select a size | 
