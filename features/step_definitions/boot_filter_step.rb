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
  selection = selections_header
  page.should_have content("Shoes")
  expect(page).to have_selection_header_count(4)
  # expect(accurate_selection_header_count?(4)).to eq true
end

