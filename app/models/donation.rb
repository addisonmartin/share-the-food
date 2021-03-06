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
#  discarded_at         :datetime
#

# The main, central model of the applicaiton. A food donation!
class Donation < ApplicationRecord
  include Discard::Model
  include PgSearch

  belongs_to :user

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :fresh_until

  validates_presence_of :latitude
  validates_presence_of :longitude
  validates_presence_of :pickup_notes

  validates_inclusion_of :is_perishable, in: [true, false]
  validates_inclusion_of :requires_preparation, in: [true, false]
  validates_inclusion_of :is_vegetarian, in: [true, false]
  validates_inclusion_of :is_vegan, in: [true, false]
  validates_inclusion_of :is_gluten_free, in: [true, false]
  validates_inclusion_of :contains_peanut, in: [true, false]
  validates_inclusion_of :contains_treenut, in: [true, false]
  validates_inclusion_of :contains_dairy, in: [true, false]
  validates_inclusion_of :contains_soy, in: [true, false]
  validates_inclusion_of :contains_egg, in: [true, false]
  validates_inclusion_of :contains_fish, in: [true, false]
  validates_inclusion_of :contains_shellfish, in: [true, false]

  has_many_attached :images

  default_scope -> { order(fresh_until: :asc) }

  pg_search_scope :search,
                  against: %i[name description pickup_notes],
                  using: { tsearch: { prefix: true } }
end
