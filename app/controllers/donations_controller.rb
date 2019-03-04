class DonationsController < ApplicationController
   def show
      @donation = Donation.find(params[:id])
   end

   def san_luis_obispo_county
      donations_for_region(params[:action])
   end

   def santa_barbara_county
      donations_for_region(params[:action])
   end

   private

   def donations_for_region(region)
      @cities = Region.where(name: region)
      @donations = get_donations.paginate(page: params[:page])
   end

   def get_donations
      Donation.limit(30)
   end
end
