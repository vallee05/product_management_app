class CreateStorageLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :storage_locations do |t|
      t.string :storage_location_name
      t.timestamps
    end
  end
end
