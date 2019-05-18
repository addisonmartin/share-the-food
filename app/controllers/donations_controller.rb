# frozen_string_literal: true

# Used to connect the (model) PostgreSQL Database,
# with the (view) HTML/CSS/JS front end.
class DonationsController < ApplicationController
  # Ensures users who are not signed in CANNOT make a new donation.
  before_action :redirect_if_not_signed_in, only: [:new]

  def show
    @donation = Donation.find(params[:id])

    # Used to pass the donation's location to the Google Map's javascript.
    gon.lat = @donation.latitude
    gon.lng = @donation.longitude
  end

  def index
    search = params[:search]

    # Only get the donations that haven't been deleted.
    @donations = Donation.kept
                         .includes(:user, :images_attachments)

    # Get the donations that match the search, if a search is given.
    unless search.blank?
      @donations = @donations.search(search)
                             .includes(:user, :images_attachments)
    end

    # Paginate the donations based on the given page.
    @donations = @donations.paginate(page: params[:page], per_page: 9)
                           .includes(:user, :images_attachments)

    # Used to pass the donations to the Google Map's javascript.
    gon.donations_list = @donations.to_json.html_safe
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      flash[:success] = 'Donation was uploaded! Thank you'
      redirect_to donation_path(@donation)
    else
      flash[:error] = 'Sorry, there was an error uploading your donation.'
      redirect_to root_path
    end
  end

  def edit
    @donation = Donation.kept.find(params[:id])

    return if current_user && (current_user.id == @donation.user.id)

    flash[:error] = 'Sorry, only the donation\'s owner can edit their donation.'
    redirect_to '/donations'
  end

  def update
    @donation = Donation.kept.find(params[:id])

    if @donation.update(donation_params)
      flash[:success] = 'Your donation was updated.'
      redirect_to @donation
    else
      flash[:error] = 'Sorry, something went wrong.'
      render 'edit'
    end
  end

  def destroy
    @donation = Donation.kept.find(params[:id])

    @donation.discard
    flash[:success] = 'Your donation was removed!'
    redirect_to '/pages/active_donations'
  end

  private

  def donation_params
    params.require(:donation).permit(
      :name, :description, :fresh_until, :latitude, :longitude, :pickup_notes,
      :is_perishable, :requires_preparation, :is_vegetarian, :is_vegan,
      :is_gluten_free, :contains_peanut, :contains_treenut, :contains_dairy,
      :contains_soy, :contains_egg, :contains_fish, :contains_shellfish,
      images: []
    ).merge(user_id: current_user.id)
  end
end
