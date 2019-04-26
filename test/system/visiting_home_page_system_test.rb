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
    click_button "I want some food"
    #TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO TODO!!!!!
    assert_selector "h1", text: "Why make a donation?"
  end

end
