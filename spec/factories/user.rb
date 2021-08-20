FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(specifier: 5..10) }
    email { Faker::Name.first_name+'@crackerbucks.com' }
    password { 'password' }
    first_name { Faker.Name.first_name(specifier: 3..10) }
    last_name { Faker.Name.last_name(specifier: 3..10) }
    isAdmin { false }
  end
end