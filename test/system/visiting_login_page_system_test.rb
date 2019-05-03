# frozen_string_literal: true

require 'application_system_test_case'

class VisitingLoginPageTest < ApplicationSystemTestCase
  test 'logging in with valid credentials' do
    visit root_path
  end
end
