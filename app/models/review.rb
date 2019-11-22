class Review < ApplicationRecord
  belongs_to :tiger
  belongs_to :user

  validates :content, :user, :rating, :tiger, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
end
