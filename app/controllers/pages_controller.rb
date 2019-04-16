include Accessible

class PagesController < ApplicationController

   def index
     @donations = Donation.limit(10)
   end

end
