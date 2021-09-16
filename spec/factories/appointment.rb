FactoryBot.define do
  factory :appointment do
    user { create(:user) }
    property { create(:property) }
    date { DateTime.now }
  end
end
