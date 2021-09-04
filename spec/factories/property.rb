FactoryBot.define do
  factory :property do
    agent { create(:agent) }
    name { Faker::Name.name }
    description { Faker::Name.name }
    picture { Faker::Name.name }
    price { Faker::Number.between(from: 1000, to: 100_000) }
    address { Faker::Name.name }
    land_area { Faker::Number.between(from: 1000, to: 100_000) }
    floor_area { Faker::Number.between(from: 1000, to: 100_000) }
  end
end
