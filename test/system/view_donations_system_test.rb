# frozen_string_literal: true

require 'application_system_test_case'

class ViewDonationsTest < ApplicationSystemTestCase
  test 'viewing donations from home page' do
    visit root_path
    click_link 'Find Donations'

    assert_selector 'h1', text: 'View Donations'
  end

  test 'view donations on an embedded Google maps' do
    visit root_path
    click_link 'Find Donations'

    assert_selector 'div', id: 'map3'
  end

  test 'view donations in a list view' do
    visit root_path
    click_link 'Find Donations'

    assert_selector 'div', id: 'donations-list'
  end
end
