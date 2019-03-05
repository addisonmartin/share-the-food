module DonationsHelper
   def create_new_donation_partial_path
      if user_signed_in?
         'donations/region/create_new_donation/signed_in'
      else
         'donations/region/create_new_donation/not_signed_in'
      end
   end

   def all_cities_button_partial_path
      if params[:city].blank?
         'donations/region/cities/all_selected'
      else
         'donations/region/cities/all_not_selected'
      end
   end

   def no_donations_partial_path
      @donations.empty? ? 'donations/region/no_donations' : 'shared/empty_partial'
   end

   def donation_format_partial_path
      current_page?(root_path) ? 'donations/donation/home_page' : 'donations/donation/region_page'
   end

   def city_field_partial_path
      if params[:city].present?
         'donations/region/search_form/city_field'
      else
         'shared/empty_partial'
      end
   end
end
