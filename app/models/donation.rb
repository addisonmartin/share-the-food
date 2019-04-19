class Donation < ApplicationRecord

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

end
