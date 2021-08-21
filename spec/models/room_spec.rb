require 'rails_helper'

RSpec.describe Room, type: :model do
  it {
    should belong_to(:property)
  }
  it {
    should validate_presence_of(:name)
  }
  it {
    should validate_presence_of(:amount)
  }
  describe 'Associations' do
    it { should belong_to(:property) }
  end
end
