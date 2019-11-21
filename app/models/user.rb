class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :tigers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :incoming_bookings, through: :tigers, source: :bookings
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :password, :photo, presence: true
  validates :username, :email, uniqueness: true

  def owner?
    tigers.any?
  end
end
