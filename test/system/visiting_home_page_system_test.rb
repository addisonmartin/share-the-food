require "application_system_test_case"

class VisitingHomePageTest < ApplicationSystemTestCase

  test "home page should have a button to view and a button to add donations" do
    visit root_path

    assert_selector "button", text: "I want some food"
    assert_selector "button", text: "I have extra food"
  end

  test "clicking I want some food button should take you to view donations page" do
    visit root_path
    click_button "I want some food"

    assert_selector "h1", text: "Nearby Donations Map"
    assert_selector "h1", text: "Nearby Donations List"
  end

  test "clicking I have extra food, and not signed in, should take you to a why signup page" do
    visit root_path
    click_button "I have extra food"

    assert_selector "h2", text: "An account is required to add a donation."
  end

  test "clicking I have extra food, and signed in, should take you to the new donation page" do
    visit root_path
    sign_in users(:default_user)
    visit root_path
    click_button "I have extra food"

    assert_selector "h1", text: "Add a new donation"
  end

  test "navigation bar should be present" do
    visit root_path

    assert_selector "a", text: "Share the Food"
  end

  test "navigation bar, and not signed in, should have links to sign in and up" do
    visit root_path

    assert_selector "li", text: "Sign In"
    assert_selector "li", text: "Sign Up"
  end

  test "navigation bar, and signed in, should have a hamburger menu with account options" do
    visit root_path
    sign_in users(:default_user)
    visit root_path
    click_button "Account Settings"

    assert_selector "ul", text: "Account Settings\nEdit Profile"
    assert_selector "ul", text: "Account Settings\nEdit Profile\nLog Out"
  end

end
