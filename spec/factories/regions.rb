FactoryGirl.define do
   factory :region do
      sequence(:name) { |n| "name#{n}"}
   end
end
