require "rails_helper"

RSpec.describe DonationsHelper, :type => :helper do

   context '#create_new_donation_partial_path' do
      it "returns a signed_in partial path" do
         helper.stub(:user_signed_in?).and_return(true)
         expect(helper.create_new_donation_partial_path). to (eq 'donations/region/create_new_donation/signed_in')
      end

      it "returns a not signed in partial path" do
         helper.stub(:user_signed_in?).and_return(false)
         expect(helper.create_new_donation_partial_path).to (eq 'donations/region/create_new_donation/not_signed_in')
      end
   end

   context '#all_cities_button_partial_path' do
      it "returns an all_selected partial path" do
         controller.params[:city] = ''
         expect(helper.all_cities_button_partial_path).to (eq 'donations/region/cities/all_selected')
      end

      it "returns an all_not_selected partial path" do
         controller.params[:city] = "city"
         expect(helper.all_cities_button_partial_path).to (eq 'donations/region/cities/all_not_selected')
      end
   end

   context '#no_donations_partial_path' do
      it "returns a no_donations partial path" do
         assign(:donations, [])
         #expect(helper.no_donations_partial_path(:donations)).to (eq ('donations/shared/no_donations'))
      end

      it "returns an empty partial path when there are donations" do
         assign(:donations, [1])
         expect(helper.no_donations_partial_path(:donations)).to (eq 'shared/empty_partial')
      end
   end

   context '#donation_format_partial_path' do
      it "returns a home_page partial path" do
         helper.stub(:current_page?).and_return(true)
         expect(helper.donation_format_partial_path).to (eq 'donations/donation/home_page')
      end

      it "returns a region_page partial path" do
         helper.stub(:current_page?).and_return(false)
         expect(helper.donation_format_partial_path).to (eq 'donations/donation/region_page')
      end
   end

   context '#update_pagination_partial_path' do
      it "returns an update_pagination partial path when there are more donations" do
         donations = double('donations', :next_page => 2)
         assign(:donations, donations)
         expect(helper.update_pagination_partial_path).to (eq 'donations/donations_pagination_page/update_pagination')
      end

      it "returns a remove_pagination partial path when there are no more donations" do
         donations = double("donations", :next_page => nil)
         assign(:donations, donations)
         expect(helper.update_pagination_partial_path).to (eq 'donations/donations_pagination_page/remove_pagination')
      end
   end
end
