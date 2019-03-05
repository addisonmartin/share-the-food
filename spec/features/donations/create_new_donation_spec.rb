require "rails_helper"

RSpec.feature "Create a new donation", :type => :feature do
   #let(:user) { create(:user) }
   #before(:each) { sign_in user }

   'shared_examples "user creates a new donation" do |region|
      scenario "successfully" do
         create(:region, name: "region", city: "city")
         visit send("#{region}_donations_path")
         find(".new-donation-button").click
         fill_in "donation[name]", with: "FOOBAR"
         fill_in "donation[details]", with: "FOOBAR"
         select "city", from: "donation[region_id]"
         click_on "Upload your Donation"
         expect(page).to have_selector("h3", text: "FOOBAR")
      end
   end

   include_examples "user creates a new donation", "san_luis_obispo_county"
   include_examples "user creates a new donation", "santa_barbara_county"'
end
