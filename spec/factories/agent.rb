FactoryBot.define do
  factory :agent do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email { "#{Faker::Name.first_name}@crackerbucks.com" }
    number { Faker::PhoneNumber.cell_phone }
    picture { "#{Faker::Name.last_name}.thisdoesntexist" }
  end
end
