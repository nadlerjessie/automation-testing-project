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

  def boots_with_multiple_widths_path
    'http://www.zappos.com/under-armour-ua-speed-freek-bozeman-uniform-black-velocity'
  end

  def find_dropdown_selectors(number)
    if number == '2'
      ['d3', 'd4']
    elsif number == '1'
      ['d3']
    end
  end

  def find_notifications(number)
    if number == '2'
      ['Please select a size', 'Please select a width']
    elsif number == '1'
      ['Please select a size']
    end
  end

  def boot_path(type)
    if type == 'UA Speed Freek Bozeman'
      'http://www.zappos.com/under-armour-ua-speed-freek-bozeman-uniform-black-velocity'
    elsif type == 'UA Glenrock Mid'
      steel_boot_path
    end
        
  end

  # def boot_link(color)
  #   if color == 'steel'
  #     find(:xpath, "//a[@href='/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow']")
  #   elsif color == 'blue'
  #     has_no_selector?(:xpath, "//a[@href='/under-armour-ua-glenrock-mid-cadet-pirate-blue-stoneleigh-taupe']")
  #   end      
  # end

  # def boot_path(path)
  #   if path == "Steel Shadow Sonic Yellow boot's"
  #     'http://www.zappos.com/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow'
  #   elsif path == 'same web'
  #     'http://www.zappos.com/mens-boots~4'
  #   end
  # end
end

module NotifyMeHelpers
  def steel_boot_path
    'http://www.zappos.com/under-armour-ua-glenrock-mid-steel-shadow-sonic-yellow'
  end
  
  def fill_form
    fill_in "email", :with => "test@test.com"
    select 'Cadet/Pirate Blue/Stoneleigh Taupe', from: 'emailSubscription.styleId'
    select '8.5', from: 'dimensionValueIds'
  end
end