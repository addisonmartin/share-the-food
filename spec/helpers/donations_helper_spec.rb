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
         expect(helper.no_donations_partial_path).to (eq ('donations/region/no_donations'))
      end
      
      it "returns an empty partial path when there are donations" do
         assign(:donations, [1])
         expect(helper.no_donations_partial_path).to (eq 'shared/empty_partial')
      end
   end
end