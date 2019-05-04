# frozen_string_literal: true

# The helper for navigation.
# Used to change the links based on if user is signed in/out.
module NavigationHelper
  def collapsible_list_partial_path
    if user_signed_in?
      'layouts/navigation/collapsible_list/user_links'
    else
      'layouts/navigation/collapsible_list/not_signed_in_links'
    end
  end
end
