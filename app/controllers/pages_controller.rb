class PagesController < ApplicationController

  def show
    render :file => "views/pages/home_page"
  end

end
