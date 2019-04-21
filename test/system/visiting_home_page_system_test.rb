require "application_system_test_case"

class VisitingHomePageTest < ApplicationSystemTestCase

  test "home page should have a button view and a button to add donations" do
    visit root_path
    assert_selector "button", text: "I want some food"
    assert_selector "button", text: "I have extra food"
  end

end
