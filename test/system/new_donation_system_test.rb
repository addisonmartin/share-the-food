# frozen_string_literal: true

require 'application_system_test_case'

class NewDonationTest < ApplicationSystemTestCase
  test 'adding a donation, and not signed in, redirects to why sign up page' do
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Why signup?'
  end

  test 'able to add a donation when signed in' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires a donation name' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires a description' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires a fresh until date' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires a latitude' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    fill_in 'fresh-until', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires a longitude' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    fill_in 'fresh-until', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    fill_in 'Latitude', with: '-1'
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation requires pickup notes' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    fill_in 'fresh-until', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    fill_in 'Latitude', with: '-1'
    fill_in 'Longitude', with: '1'
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Add Donation'
  end

  test 'adding a donation' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    fill_in 'fresh-until', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    fill_in 'Latitude', with: '-1'
    fill_in 'Longitude', with: '1'
    fill_in 'Pickup notes', with: 'Donation Pickup Notes'
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Donation Details'
  end

  test 'adding a donation with some allergen checkboxes checked' do
    sign_in users(:default_user)
    visit root_path
    click_link 'Add a Donation'

    fill_in 'Name', with: 'Donation Name'
    fill_in 'Description', with: 'Donation Description'
    fill_in 'fresh-until', with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    fill_in 'Latitude', with: '-1'
    fill_in 'Longitude', with: '1'
    fill_in 'Pickup notes', with: 'Donation Pickup Notes'
    checkbox1 = find('#donation_requires_preparation')
    checkbox1.check
    checkbox2 = find('#donation_contains_peanut')
    checkbox2.check
    checkbox3 = find('#donation_contains_soy')
    checkbox3.check
    click_button 'Create Donation'

    assert_selector 'h1', text: 'Donation Details'
  end
end
