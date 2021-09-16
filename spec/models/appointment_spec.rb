require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:date) }
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:property) }
  end
end
