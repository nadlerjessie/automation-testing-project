module Capybara
  class Session
    def has_headers?(filters)
      selection_header = find(:xpath, '//*[@id="breadCrumbs"]/div')
      verification = filters.map {|filter| selection_header.has_link?(filter) }
      !verification.include?(false)
    end

    def has_selection_header_count?(num)
      assert_selector('div.crumbList a', :count => num)
    end
  end
end