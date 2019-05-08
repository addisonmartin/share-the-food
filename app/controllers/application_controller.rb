# frozen_string_literal: true

# Does not have a model associated with it.
# Used to prevent users without an account from adding a donation.
class ApplicationController < ActionController::Base
  def redirect_if_not_signed_in
    redirect_to '/pages/why_signup' unless user_signed_in?
  end
end
