FactoryBot.define do
  factory :room do
    property { create(:property) }
    name { Faker::Name.name }
    amount { Faker::Number.between(from:1, to:10) }
  end
end
