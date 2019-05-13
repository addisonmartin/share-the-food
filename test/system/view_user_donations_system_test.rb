# frozen_string_literal: true

require 'application_system_test_case'

class ViewUserDonationsTest < ApplicationSystemTestCase
  test 'navigation bar has link to view users donations' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name

    assert_text 'View My Active Donations'
  end

  test 'viewing users donations' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View My Active Donations'

    assert_text donations(:default_user_donation).name
    assert_text donations(:default_user_donation).description
    assert_text 'Mon, 02 Jun 2008 19:02:39 +0000'
    assert_text donations(:default_user_donation).user.name
  end
end
