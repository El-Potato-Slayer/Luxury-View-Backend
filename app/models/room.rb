class Room < ApplicationRecord
  belongs_to :property
  validates :name, :amount, presence: true
end
