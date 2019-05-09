# frozen_string_literal: true

require 'application_system_test_case'

class VistingWhySignupPageTest < ApplicationSystemTestCase

  test 'why signup page should explain why to sign up' do
    visit root_path
    click_link 'Add Donation'
  end

end
