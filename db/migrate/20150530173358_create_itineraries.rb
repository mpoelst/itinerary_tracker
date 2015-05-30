class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.date :start_date
      t.text :itinerary_name
      t.integer :user_id

      t.timestamps

    end
  end
end
