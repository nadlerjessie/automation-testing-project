# automation-testing-project

The purpose of this project is to use Cucumber, Capybara, RSpec and Selenium to automate a workflow of the Zappos website. 
Positive and negative test cases are written for when shoes are available, as well as shoes that are no longer on the Zappos website.

The workflow has 6 features and 10 scenarios, the feature and step definition files are labeled accordingly. The basic workflow is:

1) Navigate to Shop Men's > Boots on Zappos

2) Filter to find only Under Armour boots

3) Select a specific pair of boots. The first is available and the second is currently not being carried by Zappos.

4) Attempt to add the boots to cart without making size or width selctions. This is done on two different pairs of boots. One of the pairs of boots currently only comes in one width, which is auto-selected. Verify approripate notifications appear.

5) Select 'Don't see your size?' and navigate to pop-up window.

6) Fill out the 'Notify Me' form and verify correct 'Thank you' page appears.

