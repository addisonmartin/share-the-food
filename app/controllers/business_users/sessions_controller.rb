include Accessible

class BusinessUsers::SessionsController < Devise::SessionsController
   # Prevents redirect happening before sign out occurs.
   skip_before_action :check_user, only: :destroy, raise: false

end
