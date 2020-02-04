class AddBookingtoUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :booking, foreign_key: true
  end
end
