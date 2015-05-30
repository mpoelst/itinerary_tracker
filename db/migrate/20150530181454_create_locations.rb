class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :location_name
      t.text :location_region
      t.string :location_zipcode

      t.timestamps

    end
  end
end
