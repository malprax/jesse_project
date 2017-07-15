class CreateLocationSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :location_searches do |t|
      t.string :phone
      t.string :country
      t.string :city
      t.string :state
      t.string :state_code, default: "ON"
      t.string :zip
      t.string :address
      t.float :longitude
      t.float :latitude
      t.float :fetched_latitude
      t.float :fetched_longitude
      t.string :emergency_contact

      t.timestamps
    end
    add_index :location_searches, :longitude
    add_index :location_searches, :latitude
  end
end
