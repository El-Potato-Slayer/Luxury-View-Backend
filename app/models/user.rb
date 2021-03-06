class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  attribute :is_admin, :boolean, default: false
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :first_name, :last_name, presence: true, length: { minimum: 3 }
end
