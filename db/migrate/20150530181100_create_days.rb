class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :lodging_address
      t.text :events
      t.integer :origin_location_id
      t.text :transportation
      t.date :arrival_date
      t.text :notes
      t.text :lodging_name
      t.integer :itinerary_id
      t.integer :destination_location_id

      t.timestamps

    end
  end
end
