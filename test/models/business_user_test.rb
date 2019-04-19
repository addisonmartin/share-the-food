require 'test_helper'

class BusinessUserTest < ActiveSupport::TestCase

  test "should not save a business user without a name" do
    buser = BusinessUser.new

    assert_not buser.save, "Saved the business user without a name."
  end

  test "should not save a business user without an email" do
    buser = BusinessUser.new
    buser.name = "Name"

    assert_not buser.save, "Saved the business user without an email."
  end

  test "should not save a business user without a password" do
    buser = BusinessUser.new
    buser.name = "Name"
    buser.email = "name@email.com"

    assert_not buser.save, "Saved the business user without a password."
  end

  test "should save a fully valid business user" do
    buser = business_users(:default_business_user)
    assert buser.save, "Did not save a valid business user."
  end

end
