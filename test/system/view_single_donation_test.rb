# frozen_string_literal: true

require 'application_system_test_case'

class ViewSingleDonationTest < ApplicationSystemTestCase
  test 'viewing a donation' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name

    assert_selector 'h1', text: 'Donation Details'
  end

  test 'viewing a donation should display who donated it' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'h2', text: donations(:default_user_donation).user
                                                                 .display_name
  end

  test 'viewing a donation should display its name' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'h3', text: donations(:default_user_donation).name
  end

  test 'viewing a donation should display its description' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'p', text: donations(:default_user_donation).description
  end

  test 'viewing a donation should display how longs its fresh until' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'p',
                    text: donations(:default_user_donation).fresh_until.to_s
  end

  test 'viewing a donation should display its location on a map' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'div', id: 'map'
  end

  test 'viewing a donation should display its pickup notes' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    assert_selector 'p', text: donations(:default_user_donation).pickup_notes
  end

  # rubocop:disable Metrics/BlockLength
  test 'viewing a donation should display all of its allergen information' do
    visit root_path
    click_link 'Find Donations'
    click_link donations(:default_user_donation).name.to_s

    checkbox = find('#is_perishable')
    assert checkbox.checked? == donations(:default_user_donation).is_perishable

    checkbox = find('#requires_preparation')
    assert\
      checkbox.checked? == \
      donations(:default_user_donation).requires_preparation

    checkbox = find('#is_vegetarian')
    assert checkbox.checked? == donations(:default_user_donation).is_vegetarian

    checkbox = find('#is_vegan')
    assert checkbox.checked? == donations(:default_user_donation).is_vegan

    checkbox = find('#is_gluten_free')
    assert checkbox.checked? == donations(:default_user_donation).is_gluten_free

    checkbox = find('#contains_peanut')
    assert\
      checkbox.checked? == donations(:default_user_donation).contains_peanut

    checkbox = find('#contains_treenut')
    assert\
      checkbox.checked? == donations(:default_user_donation).contains_treenut

    checkbox = find('#contains_dairy')
    assert checkbox.checked? == donations(:default_user_donation).contains_dairy

    checkbox = find('#contains_soy')
    assert checkbox.checked? == donations(:default_user_donation).contains_soy

    checkbox = find('#contains_egg')
    assert checkbox.checked? == donations(:default_user_donation).contains_egg

    checkbox = find('#contains_fish')
    assert checkbox.checked? == donations(:default_user_donation).contains_fish

    checkbox = find('#contains_shellfish')
    assert\
      checkbox.checked? == donations(:default_user_donation).contains_shellfish
  end
  # rubocop:enable Metrics/BlockLength
end
