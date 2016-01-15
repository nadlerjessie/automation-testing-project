World(BootSelectionHelpers)

Given (/^I am on a page for (.*) boots$/) do |type|
  visit(boot_path(type))
end

And (/^(\d+) selections have been omitted$/) do |number|
  selectors = find_dropdown_selectors(number)
  selectors.each {|selector| find("##{selector}").find(:xpath, "//*[@id='#{selector}']/option[1]").select_option}
end

When (/^I click 'Add to Cart'$/) do
  click_button('Add to Cart')
end

Then (/^(\d+) notification appears on the page$/) do |number|
  notifications = find_notifications(number)
  notifications.each {|notification| expect(page).to have_content(notification) }
end



