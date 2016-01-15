World(NavigationAndSelectionHelpers)

Given (/^I am on the Zappos home page$/) do
  visit('/')
end

When (/^I click Shop Men's > Boots$/) do
  within mens_boots_section do
    click_link('Boots')
  end
end

Then (/^The selections header only lists "Shoes", "Men", and "Boots"$/) do
  selection = selections_header
  check_content_for(selection, ["Shoes", "Men", "Boots"])
  accurate_selection_header_count?(3)  
end

