# frozen_string_literal: true

# Used to serve non-model related pages. Such as why signup page.
module PagesHelper
  def food_partial_path?
    user_signed_in? ? 'donations/new' : 'pages/why_signup'
  end

  def no_user_donations_partial_path
    if @user_donations.empty?
      'donations/no_user_donations'
    else
      'shared/empty_partial'
    end
  end

  def no_donation_history_partial_path
    if @donation_history.empty?
      'donations/no_user_donations'
    else
      'shared/empty_partial'
    end
  end
end
