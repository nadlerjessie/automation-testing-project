require 'capybara/cucumber'

Capybara.app_host = 'http://zappos.com'
Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit

module NavigationAndSelectionHeaderHelpers
  def mens_boots
    '/mens-boots~4'
  end

  def mens_boots_section
    find('a', :text => "Shop Men's").find(:xpath, '..').find(:xpath, '..')
  end

  def brand_filtering
    find(:xpath, '//*[@id="FCTbrandnamefacetSelect"]')
  end
end

module BootSelectionHelpers
  def under_armour_path
    '/mens-boots~4#!/shoes-under-armour-men-boots/CK_XARCz1wFaAtMSwAEC4gIEARgCCw.zso?t=shoes&s=isNew/desc/productPopularity/asc/'
  end

  def search_results
    find(:xpath, '//*[@id="searchResults"]')
  end

  def dropdown_select(selection)
    select "Choose Men's #{selection}"
  end

  def check_for_type(type) 
    has_link?('UA Glenrock Mid', {href: boot_path(type)})
  end

  def boot_path(type)
    if type.include?('UA')
      path = type.downcase.gsub(' ','-')
      "/under-armour-#{path}"
    else
      under_armour_path
    end
  end

  def boot_link(type)
    find(:css, "a[href='#{boot_path(type)}']")     
  end
end

module NotifyMeHelpers
  def steel_boot_path
    'http://www.zappos.com/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow'
  end
  
  def fill_form(email, color, size)
    fill_in "email", :with => email
    select color, from: 'emailSubscription.styleId'
    select size, from: 'dimensionValueIds'
  end
end