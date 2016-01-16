@boots @highPriority @notifyForm @fillIn
Feature: 'Notify Me' Form

  Scenario Outline: Fill in and submit 'Notify Me' form
    Given I am on the 'Notify Me' form
    When I fill out form with <email>, <color>, and <size>
    And I click, 'Notify Me'
    Then The page says, 'Thank You'
    And Has <email>, <color>, and <size> from form

Examples:
|      email      |              color                 | size | 
|  test1@test.com | Cadet/Pirate Blue/Stoneleigh Taupe |   8  | 
|  test2@test.com |      Steel/Shadow/Sonic Yellow     |  8.5 | 
