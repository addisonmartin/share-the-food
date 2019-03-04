FactoryGirl.define do
   factory :region do
      sequence(:name) { |n| "name#{n}"}
      sequence(:city) { |n| "city#{n}"}
   end
end
