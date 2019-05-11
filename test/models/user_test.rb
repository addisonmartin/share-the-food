# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  name                   :string           default(""), not null
#  display_name           :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save a user without a name' do
    user = User.new

    assert_not user.save, 'Saved the user without a name.'
  end

  test 'should not save a user without a display name' do
    user = User.new
    user.name = 'Name'

    assert_not user.save, 'Saved the user without a display name.'
  end

  test 'should not save a user without an email' do
    user = User.new
    user.name = 'Name'
    user.display_name = 'N'

    assert_not user.save, 'Saved the user without an email.'
  end

  test 'should not save a user without a password' do
    user = User.new
    user.name = 'Name'
    user.display_name = 'N'
    user.email = 'name@email.com'

    assert_not user.save, 'Saved the user without a password.'
  end

  test 'should save a fully valid user' do
    user = users(:default_user)

    assert user.save, 'Did not save a valid user.'
  end
end
