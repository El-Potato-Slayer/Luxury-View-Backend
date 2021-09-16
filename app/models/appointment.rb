class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :property
  validates :date, presence: true
end
