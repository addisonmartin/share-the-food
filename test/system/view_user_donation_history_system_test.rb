# frozen_string_literal: true

require 'application_system_test_case'

class ViewUserDonationHistoryTest < ApplicationSystemTestCase
  test 'only signed in users are able to view their donation history' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name

    assert_text 'View My Donation History'
  end
end
