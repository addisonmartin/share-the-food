require "rails_helper"

RSpec.feature "Infinite scrolling", :type => :feature do
   Donation.per_page = 15

   let(:check_donations_count) do
      expect(page).to have_selector('.single-donation-list', count: 15)
      page.execute_script("$(window).scrollTop($(document).height())")
      expect(page).to have_selector('.single-donation-list', count: 30)
   end

   scenario "User scrolls down the SLO page and the donations list will be appended with older donations.", js: false do
      create_list(:donation, 30, region: create(:region, name: "san_luis_obispo_county"))
      visit san_luis_obispo_county_donations_path
      check_donations_count
   end
end
