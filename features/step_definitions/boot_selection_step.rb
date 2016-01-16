World(BootSelectionHelpers)

Given (/I am on the Zappos Men's Under Armour Boots page$/) do
  visit(under_armour_path)
end

When (/I select the (.*) boots/) do |type|  
  within search_results do
    if check_for_type(type)
      boot_link(type).click
    end
  end
end

Then (/^I will be on the (.*) page$/) do |page|
  expect(current_url).to eq("http://www.zappos.com#{boot_path(page)}")
end
