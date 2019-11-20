class Review < ApplicationRecord
  belongs_to :tiger

  validates :content, :author, :rating, :tiger, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :author, format: { with: /\w+/ }
end
