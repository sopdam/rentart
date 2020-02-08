class AddArtsToBookings < ActiveRecord::Migration[5.2]
  def change
     add_reference :bookings, :art, foreign_key: true
  end
end
