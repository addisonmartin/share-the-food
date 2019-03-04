class PagesController < ApplicationController

   def index
      @donations = Donation.limit(5)
   end

end
