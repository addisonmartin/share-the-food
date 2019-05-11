# frozen_string_literal: true

# Used to connect the (model) PostgreSQL Database,
# with the (view) HTML/CSS/JS front end.
class DonationsController < ApplicationController
  # Ensures users who are not signed in CANNOT make a new donation.
  before_action :redirect_if_not_signed_in, only: [:new]

  def show
    @donation = Donation.find(params[:id])
  end

  def index
    search = params[:search]

    @donations = if search.blank?
                   Donation.paginate(page: params[:page], per_page: 9)
                 else
                   Donation.search(search).paginate(
                     page: params[:page], per_page: 9
                   )
                 end
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
    @donation = Donation.find(params[:id])
  end

  def update
    if @donation.update(donation_params)
      flash[:success] = 'Your donation was updated.'
      redirect_to @donation
    else
      flash[:error] = 'Sorry, something went wrong.'
      render 'edit'
    end
  end

  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy
    flash[:success] = 'Your donation was removed!'
    redirect_to root_path
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
