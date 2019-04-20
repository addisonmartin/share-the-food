include Accessible

class PagesController < ApplicationController

   def index

     search = params[:search]

     if search.blank?
       @donations = Donation.paginate(page: params[:page], per_page: 20)
     else
       @donations = Donation.search(search).paginate(page: params[:page], per_page: 20)
     end

   end

end
