class Donation < ApplicationRecord
   belongs_to :user
   belongs_to :region

   validates :name, presence: true
   validates :details, presence: true
   validates :region_id, presence: true

   default_scope -> { includes(:user).order(created_at: :desc)}

   scope :by_city, -> (region, city_name) do
      joins(:region).where(regions: {name: region, city: city_name})
   end

   scope :by_region, -> (region) do
      joins(:region).where(regions: {name: region})
   end

   scope :search, -> (search) do
      where("donations.name ILIKE lower(?) OR details ILIKE lower(?)", "%#{search}", "%#{search}")
   end
end
