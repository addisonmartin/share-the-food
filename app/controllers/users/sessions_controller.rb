# frozen_string_literal: true

# Used to connect the (model) Users with their views and actions.
class Users::SessionsController < Devise::SessionsController
  include Accessible
  # Prevents redirect happening before sign out occurs.
  skip_before_action :check_user, only: :destroy, raise: false
end
