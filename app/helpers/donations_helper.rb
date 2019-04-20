module DonationsHelper

  def no_donations_partial_path
    @donations.empty? ? 'donations/no_donations' : 'shared/empty_partial'
  end

  def donations_path

  end

end
