class Property < ApplicationRecord
  belongs_to :agent
  validates :name, :description, :price, :address, presence: true, length: { minimum: 3 }
  validates :floor_area, :land_area, presence: true
end
