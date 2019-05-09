# frozen_string_literal: true

require 'application_system_test_case'

class VisitingHomePageTest < ApplicationSystemTestCase
  test 'home page should have buttons to view and add donations' do
    visit root_path

    assert_selector 'a', text: 'Find Donations'
    assert_selector 'a', text: 'Add Donation'
  end

  test 'home page should have a navigation bar' do
    visit root_path

    assert_selector 'a', text: 'Share the Food'
    assert_selector 'a', text: 'Home'
    assert_selector 'a', text: 'View Donations'
    assert_selector 'a', text: 'Add a Donation'
  end

  test 'home page should have a footer' do
    visit root_path

    assert_selector 'footer', text: 'Share the Food | Questions? ;
    Contact us at: contact@sharethefood.net'
  end

  test 'home page, and not signed in, should have navigation bar ;
  links to sign up and in' do
    visit root_path

    click_link 'Account Settings'

    assert_selector 'a', text: 'Sign Up'
    assert_selector 'a', text: 'Log In'
  end

  test 'home page, and signed in, should have navigation bar links ;
  to edit account and lag out.' do
    visit root_path

    sign_in users(:default_user)
    visit root_path
    click_link 'Account Settings'

    assert_selector 'a', text: 'Edit Account'
    assert_selector 'a', text: 'Sign Out'
  end
end
