World(NavigationAndSelectionHeaderHelpers)

Given (/^I am on the Zappos home page$/) do
  visit('/')
end

When (/^I click Shop Men's > Boots$/) do
  within mens_boots_section do
    click_link('Boots')
  end
end

Then (/^The selections header only lists "Shoes", "Men", and "Boots"$/) do
  expect(page).to have_headers(['Shoes', 'Men', 'Boots'])
  # page.should have_selection_headers(selection, ['Shoes', 'Men', 'Boots'])
  expect(page).to have_selection_header_count(3)
end

