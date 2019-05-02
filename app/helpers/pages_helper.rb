module PagesHelper

  def have_food_partial_path
    user_signed_in? ? 'donations/new' : 'pages/why_signup'
  end
  
end
