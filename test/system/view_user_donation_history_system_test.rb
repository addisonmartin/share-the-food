# frozen_string_literal: true

require 'application_system_test_case'

class ViewUserDonationHistoryTest < ApplicationSystemTestCase
  test 'only signed in users are able to view their donation history' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name

    assert_text 'View My Donation History'
  end

  test 'all donations, even ones before they\'re deleted, appear in history' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View My Donation History'

    assert_text donations(:donation_for_delete_test).name
  end

  test 'removing a donation makes it appear in donation history' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View My Active Donations'

    assert_text donations(:donation_for_delete_test).name

    button = find("#remove_#{donations(:donation_for_delete_test).id}")
    accept_confirm do
      button.click
    end
    assert_no_text donations(:donation_for_delete_test).name

    click_link users(:default_user).name
    click_link 'View My Donation History'

    assert_text donations(:donation_for_delete_test).name
  end
end
