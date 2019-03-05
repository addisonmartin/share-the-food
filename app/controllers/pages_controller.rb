class PagesController < ApplicationController

   def index
      @san_luis_obispo_county_donations = Donation.by_region("san_luis_obispo_county").limit(12)
      @santa_barbara_county_donations = Donation.by_region("santa_barbara_county").limit(12)
   end

end
