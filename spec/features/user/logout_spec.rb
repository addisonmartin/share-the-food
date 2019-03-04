require 'rails_helper'

RSpec.feature "Logout", :type => :feature do
   let(:user) { create(:user) }

   scenario 'user successfully logs out', js: false do
      visit root_path
      find('nav a', text: 'Login').click
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      find('.login-button').click

      visit root_path
      find('nav #user-settings').click
      first('nav a', text: 'Log Out').click
      expect(page).to have_selector('nav a', 'text': 'Login')
   end
end
