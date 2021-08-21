class Property < ApplicationRecord
  belongs_to :agent
  has_many :appointments
  has_many :rooms
  validates :name, :description, :address, presence: true, length: { minimum: 3 }
  validates :price, :floor_area, :land_area, presence: true
end
