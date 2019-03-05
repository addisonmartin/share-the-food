class DonationsController < ApplicationController

   before_action :redirect_if_not_signed_in, only: [:new]

   def new
      @region = params[:region]
      @cities = Region.where(name: @region)
      @donation = Donation.new
   end

   def create
      @donation = Donation.new(donation_params)
      if @donation.save
         redirect_to donation_path(@donation)
      else
         redirect_to root_path
      end
   end

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

      respond_to do |format|
         format.html
         format.js { render partial: 'donations/donations_pagination_page' }
      end
   end

   def get_donations
      region = params[:action]
      search = params[:search]
      city = params[:city]

      if city.blank? && search.blank?
         donations = Donation.by_region(region).all
      elsif city.blank? && search.present?
         donations = Donation.by_region(region).search(search)
      elsif city.present? && search.blank?
         donations = Donation.by_city(region, city)
      elsif city.present? && search.present?
         donations = Donation.by_city(region, city).search(search)
      else
      end
   end

   def donation_params
      params.require(:donation).permit(:name, :details, :region_id).merge(user_id: current_user.id)
   end
end
