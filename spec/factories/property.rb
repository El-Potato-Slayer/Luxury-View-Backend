FactoryBot.define do
  factory :property do
    agent { create(:agent) }
    name { Faker::Name.name }
    description { Faker::Name.name }
    picture { Faker::Name.name }
    price { Faker::Number.between(from: 1000, to: 100000) }
    address { Faker::Name.name }
    land_area { Faker::Number.between(from: 1000, to: 100000) }
    floor_area { Faker::Number.between(from: 1000, to: 100000) }
  end
end
