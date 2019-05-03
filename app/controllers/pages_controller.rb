# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    render file: 'pages/why_signup'
  end
end
