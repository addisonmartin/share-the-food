# frozen_string_literal: true

# Does not have a model associated with it.
# Used to controll the (view) why signup page.
class PagesController < ApplicationController
  def show
    render file: 'pages/why_signup'
  end
end
