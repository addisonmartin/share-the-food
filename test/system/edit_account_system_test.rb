# frozen_string_literal: true

require 'application_system_test_case'

class EditAccountTest < ApplicationSystemTestCase
  test 'only signed in users can edit their account' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'Edit Account'

    assert_selector 'h1', text: 'Edit User'
  end

  test 'updating user account requires entering current password' do
    sign_in users(:default_user)
    visit root_path
    click_link users(:default_user).name
    click_link 'Edit Account'

    click_button 'Update'
    assert_text 'Current password can\'t be blank'
  end

  test 'editing users name' do
    sign_in users(:user_for_edit_test)
    visit root_path
    click_link users(:user_for_edit_test).name
    click_link 'Edit Account'

    fill_in 'Name', with: 'New Name'
    fill_in 'Current password', with: 'password'

    click_button 'Update'
    assert_text 'Your account has been updated successfully.'
    assert_text 'New Name'
  end

  test 'editing users email' do
    sign_in users(:user_for_edit_test)
    visit root_path
    click_link users(:user_for_edit_test).name
    click_link 'Edit Account'

    fill_in 'Email', with: 'newemail@email.com'
    fill_in 'Current password', with: 'password'

    click_button 'Update'
    assert_text 'Your account has been updated successfully.'
  end

  test 'editing users password' do
    sign_in users(:user_for_edit_test)
    visit root_path
    click_link users(:user_for_edit_test).name
    click_link 'Edit Account'

    fill_in 'Password', with: 'newpassword'
    fill_in 'Current password', with: 'password'

    click_button 'Update'
    assert_text 'Password confirmation doesn\'t match Password'

    fill_in 'Password', with: 'newpassword'
    fill_in 'Password confirmation', with: 'newpassword'
    fill_in 'Current password', with: 'password'

    click_button 'Update'
    assert_text 'Your account has been updated successfully.'
  end
end
