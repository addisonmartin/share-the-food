# frozen_string_literal: true

require 'application_system_test_case'

class LoginTest < ApplicationSystemTestCase
  test 'logging in button in navigation bar' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Log In'

    assert_selector 'h1', text: 'Log In'
  end

  test 'logging in button with invalid credentials' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Log In'

    fill_in 'Email', with: 'Bad@no.com'
    fill_in 'Password', with: '123456'

    click_button 'Log in'
    assert_text 'Invalid Email or password.'
  end

  test 'logging in' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Log In'

    fill_in 'Email', with: users(:default_user).email
    fill_in 'Password', with: 'password'

    click_button 'Log in'

    assert_text 'Find Donations'
    assert_text 'Add Donation'
    assert_text users(:default_user).name
  end

  test 'logging out' do
    sign_in users(:default_user)
    visit root_path

    click_link users(:default_user).name
    click_link 'Sign Out'

    assert_text 'Account Settings'
  end
end
