class Tiger < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, :age, :location, :species, :price, :user_id, :photo, presence: true
  validates :age, :price, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
                  against: %i[name location],
                  associated_against: {
                    user: %i[username]
                  },
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
