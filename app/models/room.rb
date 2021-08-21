class Room < ApplicationRecord
  belongs_to :property
  validates :name, :amount, presence: true

  scope :exclude_property_id, -> { select( Room.attribute_names - ['property_id']) }
end
