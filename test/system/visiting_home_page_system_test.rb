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

  test 'home page and not signed in, should have navigation bar links to sign up and in' do
    visit root_path
    click_on 'dropdown'

    assert_selector 'a', text: 'Sign Up'
    assert_selector 'a', text: 'Log In'
  end

end
