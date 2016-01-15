World(NavigationAndSelectionHelpers)

Given (/^I am on the Zappos Men's Boots page$/) do
  visit('/mens-boots~4')
end

When (/^I select Under Armour from Brands$/) do
  within brand_filtering do
    click_link('Under Armour')
  end
end

Then (/^The selections header only lists "Shoes", "Men", "Boots", and "Under Armour"$/) do
  selection = selections_header
  check_content_for(selection, ["Shoes", "Men", "Boots", "Under Armour"])
  accurate_selection_header_count?(4)
end

