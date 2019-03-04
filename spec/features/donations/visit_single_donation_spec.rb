require "rails_helper"

RSpec.feature "Visit single donation", :type => :feature do
   let(:user) { create(:user) }
   let(:donation) { create(:donation) }

   scenario "User goes to a single post from the home page", js: false do
      donation
      visit root_path
      page.find(".single-donation-card").click
      expect(page).to have_selector('body .modal')
      page.find('.viewing a').click
      #expect(page).to have_selector("#single-donation-content p", text: donation.details)
   end
end
