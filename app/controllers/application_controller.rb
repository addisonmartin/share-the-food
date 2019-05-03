# frozen_string_literal: true

# Does not have a model associated with it.
# Used to prevent users without an account from adding a donation.
class ApplicationController < ActionController::Base
  def redirect_if_not_signed_in
    redirect_to root_path unless user_signed_in?
  end

  def redirect_if_signed_in
    redirect_to root_path if user_signed_in?
  end
end
