class Property < ApplicationRecord
  belongs_to :agent
  validates :name, :description, :address, presence: true, length: { minimum: 3 }
  validates :price, :floor_area, :land_area, presence: true
end
