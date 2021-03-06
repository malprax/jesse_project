class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :city
      t.string :country
      t.string :state
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
