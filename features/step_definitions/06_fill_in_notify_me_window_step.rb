World(NotifyMeHelpers)

Given (/^I am on the 'Notify Me' form$/) do
  visit(steel_boot_path)
  click_link("Don't see your size?")
  @notify_window = windows.last
end

When (/^I fill out form$/) do
  page.within_window @notify_window do 
    fill_form
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

And (/^Has content from form$/) do
  page.within_window @thank_you do 
    expect(page).to have_content('test@test.com')
    expect(page).to have_content('Under Armour')
    expect(page).to have_content('UA Glenrock Mid')
    expect(page).to have_content('Cadet/Pirate Blue/Stoneleigh Taupe')
    expect(page).to have_content('8.5')   
  end  
end
