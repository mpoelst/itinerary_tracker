class Day < ActiveRecord::Base
validates :origin_location_id, :presence => true
validates :destination_location_id, :presence => true
belongs_to :itinerary, :class_name => "Itinerary", :foreign_key => "itinerary_id"
belongs_to :origin_location, :class_name => "Location", :foreign_key => "origin_location_id"
belongs_to :destination_location, :class_name => "Location", :foreign_key => "destination_location_id"
end
