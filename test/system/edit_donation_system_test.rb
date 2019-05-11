# frozen_string_literal: true

require 'application_system_test_case'

class EditDonationTest < ApplicationSystemTestCase
  test 'only signed in users are able to edit their donations' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View my Donations'
    click_link donations(:default_user_donation).name

    assert_text 'Edit Donation'
  end

  test 'editing donation' do
    
  end
end
