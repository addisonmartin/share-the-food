# frozen_string_literal: true

require 'application_system_test_case'

class NewDonationPageTest < ApplicationSystemTestCase
  test 'adding a donation, and not signed in, redirects to why sign up page' do
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Why signup?'
  end

  test 'adding a donation requires a name' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'successfully adding a donation while signed in' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Add Donation'
  end
end
