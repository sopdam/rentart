class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :price
      t.string :city
      t.float :longitude
      t.float :latitude
      t.string :dimensions
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
