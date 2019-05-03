# == Schema Information
#
# Table name: business_users
#
#  id                     :bigint           not null, primary key
#  name                   :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

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
