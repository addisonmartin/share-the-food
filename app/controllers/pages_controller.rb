# frozen_string_literal: true

# Does not have a model associated with it.
# Used to control the (view) why signup page.
class PagesController < ApplicationController
  def show
    # User donations is used by the page user_donations.html.erb
    @user_donations = current_user ? current_user.donations.kept : []
    @donation_history = current_user ? current_user.donations.all : []
    render "pages/#{params[:page]}"
  end
end
