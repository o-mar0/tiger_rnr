class Tiger < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, :age, :location, :species, :price, :user_id, presence: true
  validates :age, :price, numericality: { only_integer: true }
end
