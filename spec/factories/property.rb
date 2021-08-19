FactoryBot.define do
  factory :property do
    agent { create(:agent) }
    name { Faker::Name.name }
    description { Faker::Name.name }
    price { Faker::Number.number }
    address { Faker::Name.name }
    land_area { Faker::Number.number }
    floor_area { Faker::Number.number }
  end
end
