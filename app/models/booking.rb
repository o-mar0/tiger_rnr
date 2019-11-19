class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tiger

  validates :booking_start, :booking_end, :user, :tiger, presence: true
  after_create :set_total_price

  # callback after_create to set the total_price
  private

  def set_total_price
    self.total_price = (booking_end - booking_start) * tiger.price
    save
  end
end
