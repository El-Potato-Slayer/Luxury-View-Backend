class Property < ApplicationRecord
  belongs_to :agent
  has_many :appointments
  has_many :rooms
  validates :name, :description, :picture, :address, presence: true, length: { minimum: 3 }
  validates :price, :floor_area, :land_area, presence: true
  scope :shortened_attributes, lambda {
                                 select(Property.attribute_names - %w[description floor_area land_area created_at updated_at])
                               }
end
