class User < ApplicationRecord
  has_many :tigers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true

  def owner?
    user.tigers.any?
  end
end
