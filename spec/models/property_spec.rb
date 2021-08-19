require 'rails_helper'

RSpec.describe Property, type: :model do
  it {
    should belong_to(:agent)
  }
  it {
    should validate_presence_of(:name)
  }
  it {
    should validate_length_of(:name).is_at_least(3)
  }
  it {
    should validate_presence_of(:description)
  }
  it {
    should validate_length_of(:description).is_at_least(3)
  }
  it {
    should validate_presence_of(:address)
  }
  it {
    should validate_length_of(:address).is_at_least(3)
  }
  it {
    should validate_presence_of(:floor_area)
  }
  it {
    should validate_presence_of(:land_area)
  }
end
