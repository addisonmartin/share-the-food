class DonationsController < ApplicationController

  # Ensures users who are not signed in CANNOT make a new donation.
  before_action :redirect_if_not_signed_in, only: [:new]

  def show
    @donation = Donation.find(params[:id])
  end

  def index

    search = params[:search]

    if search.blank?
      @donations = Donation.paginate(page: params[:page], per_page: 20)
    else
      @donations = Donation.search(search).paginate(page: params[:page], per_page: 20)
    end

  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      redirect_to donation_path(@donation)
    else
      redirect_to root_path
    end

  end

  private

  def donation_params
    params.require(:donation).permit(:name, :description, :fresh_until, :latitude, :longitude, :pickup_notes, :is_perishable, :requires_preparation, :is_vegetarian, :is_vegan, :is_gluten_free, :contains_peanut, :contains_treenut, :contains_dairy, :contains_soy, :contains_egg, :contains_fish, :contains_shellfish, images: []).merge(user_id: current_user.id)
  end

end
