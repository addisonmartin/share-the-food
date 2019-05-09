# frozen_string_literal: true

require 'application_system_test_case'

class VistingWhySignupPageTest < ApplicationSystemTestCase
  test 'why signup page should explain why to sign up' do
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Why signup?'
    assert_selector 'h2', text: 'An account is required to add a donation.'
    assert_selector 'p', text: 'In order to ensure accountability and respect '\
    'of the food donated on this platform, you must have an account and be '\
    'signed in to create a new donation. Creating an account only requires '\
    'a valid email, and we will never sell or give it out. Only your name '\
    'will be shown with your donation.'
  end

  test 'why signup page should have button to sign up' do
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'a', text: 'Sign Up'
  end

  test 'why signup page should not appear if the user is signed in' do
    visit root_path
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Add Donation'
  end
end
