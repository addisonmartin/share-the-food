# frozen_string_literal: true

require 'application_system_test_case'

class DeleteDonationTest < ApplicationSystemTestCase
  test 'only signed in users are able to delete their donations' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View my Donations'

    assert_text 'Delete'
  end

  test 'deleting a donation' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'View my Donations'

    assert_text donations(:donation_for_delete_test).name

    button = find("#delete_#{donations(:donation_for_delete_test).id}")
    accept_confirm do
      button.click
    end
    assert_no_text donations(:donation_for_delete_test).name
  end
end
