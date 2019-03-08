require "time"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

def seed_users

   User.create(
      name: "Sally Sue",
      email: "ssue@email.com",
      password: "123456",
      password_confirmation: "123456"
   )
   User.create(
      name: "Billy Bob",
      email: "bbob@email.com",
      password: "123456",
      password_confirmation: "123456"
   )
   User.create(
      name: "Adam Adams",
      email: "aadams@email.com",
      password: "123456",
      password_confirmation: "123456"
   )
   User.create(
      name: "Eric Erikson",
      email: "eerikson@email.com",
      password: "123456",
      password_confirmation: "123456"
   )
   User.create(
      name: "Zack Zane",
      email: "zzane@email.com",
      password: "123456",
      password_confirmation: "123456"
   )
   User.create(
      name: "Willy Wonka",
      email: "goldenticket@pranked.com",
      password: "123456",
      password_confirmation: "123456"
   )

end

def seed_regions

   slo_cities = ["San Luis Obispo", "Paso Robles", "Atascadero", "Arroyo Grande", "Grover Beach"]
   sb_cities = ["Santa Maria", "Santa Barbara", "Lompoc", "Goleta", "Carpinteria"]

   slo_cities.each do |city_name|
      Region.create(name: "san_luis_obispo_county", city: city_name)
   end

   sb_cities.each do |city_name|
      Region.create(name: "santa_barbara_county", city: city_name)
   end
end

def seed_donations

   slo_id = Region.where(name: "san_luis_obispo_county", "city": "San Luis Obispo").ids[0]
   sb_id = Region.where(name: "santa_barbara_county", "city": "Santa Barbara").ids[0]

   Donation.create(
      name: "Pizza",
      details: "Uneatten, whole pizza leftover from an event.",
      fresh_until: Time.new(2019, 4, 1),
      latitude: 35.273670,
      longitude: -120.663118,
      pickup_notes: "Come up to the house an knock, no problem.",
      is_perishable: true,
      requires_preparation: false,
      is_vegetarian: false,
      is_vegan: false,
      is_gluten_free: false,
      contains_peanut: false,
      contains_treenut: false,
      contains_dairy: true,
      contains_soy: false,
      contains_egg: false,
      contains_fish: false,
      contains_shellfish: false,
      user_id: rand(0..5),
      region_id: slo_id
   )

   Donation.create(
      name: "Canned Food",
      details: "5 cans of beans. Take as many as you want.",
      fresh_until: Time.new(2019, 12, 1),
      latitude: 35.292500,
      longitude: -120.676593,
      pickup_notes: "Left on sidewalk in purple bag.",
      is_perishable: false,
      requires_preparation: true,
      is_vegetarian: true,
      is_vegan: true,
      is_gluten_free: true,
      contains_peanut: false,
      contains_treenut: false,
      contains_dairy: false,
      contains_soy: false,
      contains_egg: false,
      contains_fish: false,
      contains_shellfish: false,
      user_id: rand(0..5),
      region_id: slo_id
   )

   Donation.create(
      name: "Ramen Noodles",
      details: "15 packages of chicken ramen noodles.",
      fresh_until: Time.new(2019, 6, 1),
      latitude: 35.292500,
      longitude: -120.676593,
      pickup_notes: "Inside a plastic bag on the side of house hanging from fence. You'll see it.",
      is_perishable: false,
      requires_preparation: true,
      is_vegetarian: false,
      is_vegan: false,
      is_gluten_free: false,
      contains_peanut: true,
      contains_treenut: true,
      contains_dairy: false,
      contains_soy: false,
      contains_egg: true,
      contains_fish: false,
      contains_shellfish: false,
      user_id: rand(0..5),
      region_id: slo_id
   )

   Donation.create(
      name: "Free meal, we have extra food!",
      details: "We are going on vacation soon and have way too much food that will go to waste. Stop by and we'll make sure you're full!",
      fresh_until: Time.new(2019, 5, 15),
      latitude: 35.265632,
      longitude: -120.650708,
      pickup_notes: "Come up to the house, knock, and ask for a meal.",
      is_perishable: true,
      requires_preparation: false,
      is_vegetarian: false,
      is_vegan: false,
      is_gluten_free: false,
      contains_peanut: true,
      contains_treenut: false,
      contains_dairy: true,
      contains_soy: false,
      contains_egg: true,
      contains_fish: false,
      contains_shellfish: false,
      user_id: rand(0..5),
      region_id: sb_id
   )

   Donation.create(
      name: "Beef Lasagna",
      details: "Whole, uneatten caserole.",
      fresh_until: Time.new(2019, 3, 30),
      latitude: 34.427905,
      longitude: -119.679065,
      pickup_notes: "Will leave on porch, if not there knock and ask.",
      is_perishable: true,
      requires_preparation: true,
      is_vegetarian: false,
      is_vegan: false,
      is_gluten_free: false,
      contains_peanut: false,
      contains_treenut: false,
      contains_dairy: true,
      contains_soy: true,
      contains_egg: true,
      contains_fish: false,
      contains_shellfish: false,
      user_id: rand(0..5),
      region_id: sb_id
   )

end

seed_users
seed_regions
seed_donations
