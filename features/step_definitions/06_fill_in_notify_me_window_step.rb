World(NotifyMeHelpers)

Given (/^I am on the 'Notify Me' form$/) do
  visit(steel_boot_path)
  click_link("Don't see your size?")
  @notify_window = windows.last
end

When (/^I fill out form with (.*), (.*), and (.*)$/) do |email, color, size|
  page.within_window @notify_window do 
    fill_form(email, color, size)
  end
end

And (/^I click, 'Notify Me'$/) do
  page.within_window @notify_window do 
    click_button('Notify Me!') 
  end
end

Then (/^The page says, 'Thank You'$/) do
  @thank_you = windows.last
  page.within_window @thank_you do 
    expect(page).to have_content('THANK YOU!')
  end
end

And (/^Has (.*), (.*), and (.*) from form$/) do |email, color, size|
  page.within_window @thank_you do 
    expect(page).to have_content(email)
    expect(page).to have_content('Under Armour')
    expect(page).to have_content('UA Glenrock Mid')
    expect(page).to have_content(color)
    expect(page).to have_content(size)   
  end  
end
