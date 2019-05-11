# frozen_string_literal: true

require 'application_system_test_case'

class SignupTest < ApplicationSystemTestCase
  test 'signup page should ask for name, email, and password' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    assert_selector 'h1', text: 'Sign Up'
    assert_selector 'label', text: 'Name'
    assert_selector 'label', text: 'Email'
    assert_selector 'label', text: 'Password'
    assert_selector 'label', text: 'Password confirmation'
    assert_text 'Log in'
  end

  test 'email must include an @' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    fill_in 'Name', with: 'Bob Tester'
    fill_in 'Email', with: 'No at sign haha'

    click_button 'Sign up'
    assert_selector 'h1', text: 'Sign Up'
  end

  test 'password must be at least 6 characters long' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    fill_in 'Name', with: 'Bob Tester'
    fill_in 'Email', with: 'bob@totallyrealemail.com'
    fill_in 'Password', with: '12345'
    fill_in 'Password confirmation', with: '12345'

    click_button 'Sign up'
    assert_text 'Password is too short'
  end

  test 'password and password confirmation must match' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    fill_in 'Name', with: 'Bob Tester'
    fill_in 'Email', with: 'bob@totallyrealemail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '87654321'

    click_button 'Sign up'
    assert_text 'Password confirmation doesn\'t match Password'
  end

  test 'successfully signing up' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    fill_in 'Name', with: 'Bob Tester'
    fill_in 'Email', with: 'bob@totallyrealemail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'

    click_button 'Sign up'
    assert_text 'Find Donations'
    assert_text 'Add a Donation'
  end

  test 'cannot create two accounts with same email' do
    visit root_path
    click_link 'Account Settings'
    click_link 'Sign Up'

    fill_in 'Name', with: 'Fake Tester'
    fill_in 'Email', with: 'user@email.com' # See /tests/fixtures/users.yml
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'

    click_button 'Sign up'
    assert_text 'Email has already been taken'
  end
end
