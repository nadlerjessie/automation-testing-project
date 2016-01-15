require 'capybara/cucumber'

Capybara.app_host = 'http://zappos.com'
Capybara.default_driver = :selenium

module NavigationAndSelectionHelpers
  def mens_boots_section
    page.find('a', :text => "Shop Men's").find(:xpath, '..').find(:xpath, '..')
  end

  def selections_header
    page.find(:xpath, '//*[@id="breadCrumbs"]/div')
  end

  def accurate_selection_header_count?(num)
    page.assert_selector('div.crumbList a', :count => num)
  end

  def check_content_for(selection, filters)
    verification = filters.map {|filter| selection.has_content?(filter)}
    !verification.include?(false)
  end

  def brand_filtering
    page.find(:xpath, '//*[@id="FCTbrandnamefacetSelect"]')
  end
end