class Tiger < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, :age, :location, :species, :price, :user_id, :photo, presence: true
  validates :age, :price, numericality: { only_integer: true }
end
