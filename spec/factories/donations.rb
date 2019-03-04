require "time"

FactoryGirl.define do
   factory :donation do
      name "donation name"
      details "donation details"
      fresh_until Time.new(2000)
      latitude (-1.1)
      longitude (1.1)
      pickup_notes "donation pickup notes"
      is_perishable false
      requires_preparation false
      is_vegetarian false
      is_vegan false
      is_gluten_free false
      contains_peanut false
      contains_treenut false
      contains_dairy false
      contains_soy false
      contains_egg false
      contains_fish false
      contains_shellfish false
      region
      user
   end
end
