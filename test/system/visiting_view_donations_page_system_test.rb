require "application_system_test_case"

class VisitingViewDonationsPageTest < ApplicationSystemTestCase
  test "view donations page should have a map to view all the donations" do
    visit root_path
    click_button "I want some food"

    assert_selector "div", id: "map2"

  end

  test "view donations page should have a list to view all the donations" do
    visit root_path
    click_button "I want some food"

    assert_selector "div", id: "donations-list"
  end

  test "view donations page should have a search bar to search all the donations" do
    visit root_path
    click_button "I want some food"

    assert_selector "i", class: "fa-search"
  end

  test "view donations page donation's list should display info about the donation, and a way to view the individual donation" do
    visit root_path
    click_button "I want some food"

    assert_text "Default Business User Donation"
    assert_text "Default User Donation"
    assert_text "Donated by Default User"
    assert_text "This is a donation. It was donated, by a user. ???"

    assert_selector "button", text: "View Donation"

  end
end
