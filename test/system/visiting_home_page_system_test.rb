require "application_system_test_case"

class VisitingHomePageTest < ApplicationSystemTestCase

  test "visiting the root path" do
    visit root_path
    assert_selector "h1", text: "Nearby Donations"
  end

end
