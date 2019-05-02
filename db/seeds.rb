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
  names1 = ["Sally", "Bob", "Fhen", "Milton", "Rick"]
  names2 = ["Sue", "Bobson", "Do", "Milston", "Sanchez"]

  10.times do
    User.create(name: "#{names1[rand(names1.length)]} #{names2[rand(names2.length)]}", email: "email#{user_id}@email.com", password: "123456", password_confirmation: "123456")
    user_id += 1
  end

end

def seed_donations

  names = ["Pasta", "Pizza", "Canned Beans", "Ramen"]
  times = [Time.new(2000, 6, 15), Time.new(2019, 12, 31), Time.new(2022, 1, 05)]

  100.times do
    n = names[rand(names.length)]

    Donation.create(user_id: rand(10), name: n, description: "This is a delicious #{n}!",
                    fresh_until: times[rand(times.length)], latitude: (rand(170) - 85), longitude: (rand(360) - 180), pickup_notes: "Meet me at these coordinates. Bring a bag.", is_perishable: true, requires_preparation: false, is_vegetarian: rand(2).even?, is_vegan: rand(2).even?, is_gluten_free: rand(2).even?, contains_peanut: rand(2).even?, contains_treenut: rand(2).even?, contains_dairy: rand(2).even?, contains_soy: rand(2).even?, contains_egg: rand(2).even?, contains_fish: rand(2).even?, contains_shellfish: rand(2).even?)
  end
end

seed_users
seed_donations
