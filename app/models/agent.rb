class Agent < ApplicationRecord
  has_many :properties
  validates :first_name, :last_name, :email, presence: true, length: { minimum: 3 }
  validates :picture, presence: true, length: { minimum: 5}
  validates :number, presence: true, length: { minimum: 10}
end
