# frozen_string_literal: true

module Users
  # Used to control Users signing in and up.
  class RegistrationsController < Devise::RegistrationsController
    include Accessible

    # Ensures the current user is allowed to edit and cancel their own account.
    skip_before_action :check_user, except: %i[new create], raise: false

    private

    def sign_up_params
      params.require(:user).permit(
        :name, :email, :password, :password_confirmation
      )
    end

    def account_update_params
      params.require(:user).permit(
        :name, :email, :password, :password_confirmation, :current_password
      )
    end
  end
end
