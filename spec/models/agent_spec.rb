require 'rails_helper'

RSpec.describe Agent, type: :model do
  it {
    should have_many(:properties)
  }
  it {
    should validate_presence_of(:first_name)
  }
  it {
    should validate_length_of(:first_name).is_at_least(3)
  }
  it {
    should validate_presence_of(:last_name)
  }
  it {
    should validate_length_of(:last_name).is_at_least(3)
  }
  it {
    should validate_presence_of(:email)
  }
  it {
    should validate_length_of(:email).is_at_least(3)
  }
  it {
    should validate_presence_of(:number)
  }
  it {
    should validate_length_of(:number).is_at_least(10)
  }
  it {
    should validate_presence_of(:picture)
  }
  it {
    should validate_length_of(:picture).is_at_least(5)
  }
end
