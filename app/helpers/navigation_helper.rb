module NavigationHelper

   def collapsible_list_partial_path
      if user_signed_in?
         'layouts/navigation/collapsible_list/user_links'
      else
         'layouts/navigation/collapsible_list/not_signed_in_links'
      end
   end

end
