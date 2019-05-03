# frozen_string_literal: true

# The helper for Donations.
module DonationsHelper
  def no_donations_partial_path
    @donations.empty? ? 'donations/no_donations' : 'shared/empty_partial'
  end
end
