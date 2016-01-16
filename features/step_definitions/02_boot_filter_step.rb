World(NavigationAndSelectionHeaderHelpers)

Given (/^I am on the Zappos Men's Boots page$/) do
  visit(mens_boots)
end

When (/^I select Under Armour from Brands$/) do
  within brand_filtering do
    click_link('Under Armour')
  end
end

Then (/^The selections header only lists "Shoes", "Men", "Boots", and "Under Armour"$/) do
  expect(page).to have_headers(['Shoes', 'Men', 'Boots', 'Under Armour'])
  expect(page).to have_selection_header_count(4)
end

