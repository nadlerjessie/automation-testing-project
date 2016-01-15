World(NotifyMeHelpers)

Given (/^I am on the page for a pair of boots$/) do
  visit(steel_boot_path)
end

When (/^I click "([^"]*)"$/) do |link|
  click_link(link)
end

Then (/^A new window, 'Notify Me!', opens$/) do
  new_window = windows.last
  page.within_window new_window do
    expect(page).to have_content('NOTIFY ME!')
  end
end
