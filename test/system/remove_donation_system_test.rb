# frozen_string_literal: true

require 'application_system_test_case'

class RemoveDonationTest < ApplicationSystemTestCase
  test 'only signed in users are able to remove their donations' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View My Active Donations'

    assert_text 'Remove'
  end

  test 'remove a donation' do
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
  end
end
