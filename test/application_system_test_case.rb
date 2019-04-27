require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Devise::Test::IntegrationHelpers

  driven_by :selenium, using: :chrome, options: { args: ["headless"]}
end
