require "time"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_users
   user_id = 0
   10.times do
      User.create(
         name: "test#{user_id}",
         email: "test#{user_id}@test.com",
         password: "123456",
         password_confirmation: "123456"
      )

      user_id = user_id + 1
   end
end

def seed_regions
   Region.create(name: "Global")
end

def seed_donations
   regions = Region.all
   donation_id = 0

   25.times do
      Donation.create(
         name: "donation#{donation_id}",
         details: "donation details#{donation_id}",
         fresh_until: Time.new(1999),
         latitude: -1.1,
         longitude: 1.1,
         pickup_notes: "donation pickup notes #{donation_id}",
         is_perishable: true,
         requires_preparation: true,
         is_vegetarian: true,
         is_vegan: true,
         is_gluten_free: true,
         contains_peanut: true,
         contains_treenut: true,
         contains_dairy: true,
         contains_soy: true,
         contains_egg: true,
         contains_fish: true,
         contains_shellfish: true,
         user_id: rand(1..9),
         region_id: regions[0].id
      )

      donation_id = donation_id + 1
   end
end

seed_users
seed_regions
seed_donations
