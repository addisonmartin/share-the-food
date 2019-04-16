include Accessible

class BusinessUsers::RegistrationsController < Devise::RegistrationsController
   # Ensures the current user is allowed to edit and cancel their own account.
   skip_before_action :check_user, except: [:new, :create], raise: false

   private

   def sign_up_params
      params.require(:business_user).permit(:name, :email, :password, :password_confirmation)
   end

   def account_update_params
      params.require(:business_user).permit(:name, :email, :password, :password_confirmation, :current_password)
   end

end
