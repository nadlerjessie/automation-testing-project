World(BootSelectionHelpers)

Given (/I am on the Zappos Men's Under Armour Boots page$/) do
  visit(under_armour_path)
end

When (/I select the steel boots/) do
  within search_results do
    steel_boot_link.click
  end
end

Then (/^I will be on the Steel Shadow Sonic Yellow boot's page$/) do
  expect(current_url).to eq(steel_boot_path)
end


# Cadet/Pirate Blue/Stoneleigh Taupe
# Gravel/Stealth Gray/Zombie Green
# Steel/Shadow/Sonic Yellow

# a-href format: /under-armour-ua-glenrock-mid-gravel-stealth-gray-zombie-green
# second scenario:
  # Scenario: Attempt to select UA Glenrock Mid Boots in blue, which are unavailable
  #   When I look for the blue boots
  #   Then No selections will be found
  #   And I will stay on the current path