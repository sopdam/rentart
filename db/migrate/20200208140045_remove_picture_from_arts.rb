class RemovePictureFromArts < ActiveRecord::Migration[5.2]
  def change
    remove_column :arts, :picture
  end
end
