require 'test_helper'

class DonationTest < ActiveSupport::TestCase

  test "should not save donation without a user" do
    donation = donations(:default_user_donation)
    donation.user = nil

    assert_not donation.save, "Saved the donation without a user."
  end

  test "should not save donation without a name" do
    donation = donations(:default_user_donation)
    donation.name = nil

    assert_not donation.save, "Saved the donation without a name."
  end

end
