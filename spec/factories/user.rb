FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(specifier: 5..10) + Random.new.rand(100_000).to_s }
    email { Faker::Internet.email }
    password { 'password' }
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    is_admin { false }
  end
end
