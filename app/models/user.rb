class User < ApplicationRecord
  has_many :tigers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :incoming_bookings, through: :tigers, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  def owner?
    tigers.any?
  end
end
