class RemoveBookingsOnArts < ActiveRecord::Migration[5.2]
  def change
    remove_column :arts, :booking_id
  end
end
