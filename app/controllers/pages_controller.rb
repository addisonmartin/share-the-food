# frozen_string_literal: true

# Does not have a model associated with it.
# Used to control the (view) why signup page.
class PagesController < ApplicationController
  def show
    render "pages/#{params[:page]}"
  end
end
