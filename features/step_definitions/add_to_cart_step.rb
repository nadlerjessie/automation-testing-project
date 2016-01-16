World(BootSelectionHelpers)

Given (/^I am on a page for (.*) boots$/) do |type|
  visit(boot_path(type))
end

And (/^(.*) selection has been omitted$/) do |selection|
  puts current_url
  dropdown_select(selection)
end

When (/^I click 'Add to Cart'$/) do
  click_button('Add to Cart')
end

Then (/^(.*) appears on the page$/) do |notification|
  expect(page).to have_content(notification)
end



