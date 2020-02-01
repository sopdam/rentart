class AddBookingToArts < ActiveRecord::Migration[5.2]
  def change
    add_reference :arts, :booking, foreign_key: true
  end
end
