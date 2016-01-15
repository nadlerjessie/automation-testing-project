Given (/^I am on the Zappos home page$/) do
  visit('/')
end

When (/^I click Shop Men's > Boots$/) do
  within page.find('#hpTopLeft > div:nth-child(2)') do
    click_link('Boots')
  end
end

Then (/^The selections header only lists "Shoes", "Men", and "Boots"$/) do
  page.has_content?('Shoes')
  page.has_content?('Men')
  page.has_content?('Boots')
end

