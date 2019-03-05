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
end
