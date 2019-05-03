# frozen_string_literal: true

# == Schema Information
#
# Table name: donations
#
#  id                   :bigint           not null, primary key
#  user_id              :bigint
#  name                 :string
#  description          :text
#  fresh_until          :datetime
#  latitude             :float
#  longitude            :float
#  pickup_notes         :text
#  is_perishable        :boolean
#  requires_preparation :boolean
#  is_vegetarian        :boolean
#  is_vegan             :boolean
#  is_gluten_free       :boolean
#  contains_peanut      :boolean
#  contains_treenut     :boolean
#  contains_dairy       :boolean
#  contains_soy         :boolean
#  contains_egg         :boolean
#  contains_fish        :boolean
#  contains_shellfish   :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class DonationTest < ActiveSupport::TestCase
  test 'should not save donation without a user' do
    donation = Donation.new

    assert_not donation.save, 'Saved the donation without a user.'
  end

  test 'should not save donation without a name' do
    donation = Donation.new
    donation.user = users(:default_user)

    assert_not donation.save, 'Saved the donation without a name.'
  end

  test 'should not save donation without a description' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'

    assert_not donation.save, 'Saved the donation without a description.'
  end

  test 'should not save donation without a fresh until date' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'

    assert_not donation.save, 'Saved the donation without a fresh until date.'
  end

  test 'should not save donation without a latitude' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now

    assert_not donation.save, 'Saved the donation without a latitude.'
  end

  test 'should not save donation without a longitude' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0

    assert_not donation.save, 'Saved the donation without a longitude.'
  end

  test 'should not save donation without pick up notes' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0

    assert_not donation.save, 'Saved the donation without pick up notes.'
  end

  test 'should not save donation without a is perishable value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'

    assert_not donation.save, 'Saved the donation without a is perishable value.'
  end

  test 'should not save donation without a requires preparation value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true

    assert_not donation.save, 'Saved the donation without a requires preparation value.'
  end

  test 'should not save donation without a is vegetarian value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true

    assert_not donation.save, 'Saved the donation without a is vegetarian value.'
  end

  test 'should not save donation without a is vegan value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true

    assert_not donation.save, 'Saved the donation without a is vegan value.'
  end

  test 'should not save donation without a is gluten free value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true

    assert_not donation.save, 'Saved the donation without a is gluten free value.'
  end

  test 'should not save donation without a contains peanut value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true

    assert_not donation.save, 'Saved the donation without a contains peanut value.'
  end

  test 'should not save donation without a contains treenut value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true

    assert_not donation.save, 'Saved the donation without a contains treenut value.'
  end

  test 'should not save donation without a contains dairy value.' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true

    assert_not donation.save, 'Saved the donation without a contains dairy value.'
  end

  test 'should not save donation without a contains soy value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true
    donation.contains_dairy = true

    assert_not donation.save, 'Saved the donation without a contains soy value.'
  end

  test 'should not save donation without a contains egg value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true
    donation.contains_dairy = true
    donation.contains_soy = true

    assert_not donation.save, 'Saved the donation without a contains egg value.'
  end

  test 'should not save donation without a contains fish value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true
    donation.contains_dairy = true
    donation.contains_soy = true
    donation.contains_egg = true

    assert_not donation.save, 'Saved the donation without a contains fish value.'
  end

  test 'should not save donation without a contains shellfish value' do
    donation = Donation.new
    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true
    donation.contains_dairy = true
    donation.contains_soy = true
    donation.contains_egg = true
    donation.contains_fish = true

    assert_not donation.save, 'Saved the donation without a contains shellfish value.'
  end

  test 'should save a fully valid donation' do
    donation = Donation.new

    donation.user = users(:default_user)
    donation.name = 'Donation'
    donation.description = 'Description'
    donation.fresh_until = Time.now
    donation.latitude = 0
    donation.longitude = 0
    donation.pickup_notes = 'Pickup notes'
    donation.is_perishable = true
    donation.requires_preparation = true
    donation.is_vegetarian = true
    donation.is_vegan = true
    donation.is_gluten_free = true
    donation.contains_peanut = true
    donation.contains_treenut = true
    donation.contains_dairy = true
    donation.contains_soy = true
    donation.contains_egg = true
    donation.contains_fish = true
    donation.contains_shellfish = true

    assert donation.save, 'Did not save a valid donation.'
  end
end
