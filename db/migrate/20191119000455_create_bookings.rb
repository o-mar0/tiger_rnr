class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :booking_start
      t.date :booking_end
      t.references :user, foreign_key: true
      t.references :tiger, foreign_key: true

      t.timestamps
    end
  end
end
