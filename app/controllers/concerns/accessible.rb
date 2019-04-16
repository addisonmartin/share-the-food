# Used by devise to prevent users and business_users from being able to interact on each others session pages
module Accessible
   extend ActiveSupport::Concern

   included do
      before_action :check_user
   end

   protected
   def check_user
      if current_business_user
         flash.clear
         redirect_to(root_path) && return
      elsif current_user
         flash.clear
         redirect_to(root_path) && return
      end
   end
end
