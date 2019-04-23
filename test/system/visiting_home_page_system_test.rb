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

    assert_selector "h1", text: "Nearby Donations"

  end

  test "viewing the default donations" do
    visit root_path
    click_button "I want some food"

    assert_text "Default Business User Donation"
    assert_text "Default User Donation"
    assert_text "Donated by Default User"
    assert_text "This is a donation. It was donated, by a user. ???"

    assert_selector "button", text: "View Donation"

  end

  test "clicking I have extra food, and not signed in, should take you to a why signup page" do
    visit root_path
    click_button "I want some food"

    assert_selector "h1", text: "Nearby Donations"
  end

end
