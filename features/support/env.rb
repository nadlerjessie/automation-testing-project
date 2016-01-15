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

  def steel_boot_link
    find(:xpath, "//a[@href='/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow']")
  end

  def steel_boot_path
    'http://www.zappos.com/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow'
  end
end