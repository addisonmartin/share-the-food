class Donation < ApplicationRecord
   belongs_to :user
   belongs_to :region

   default_scope -> { includes(:user).order(created_at: :desc)}
end
