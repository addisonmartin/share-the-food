# frozen_string_literal: true

# Used to serve non-model related pages. Such as why signup page.
module PagesHelper
  def food_partial_path?
    user_signed_in? ? 'donations/new' : 'pages/why_signup'
  end
end
