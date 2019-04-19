include Accessible

class PagesController < ApplicationController

   def index
     @donations = Donation.paginate(page: params[:page], per_page: 20)
   end

end
