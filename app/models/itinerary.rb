class Itinerary < ActiveRecord::Base
validates :start_date, :presence => true
validates :itinerary_name, :presence => true
validates :user_id, :presence => true
belongs_to :user
belongs_to :origin_location, :class_name => "Location", :foreign_key => "origin_location_id"
belongs_to :destination_location, :class_name => "Location", :foreign_key => "destination_location_id"
belongs_to :arrival_date, :class_name => "Arrival Date", :foreign_key => "arrival_date"
has_many :days, dependent: :destroy
end
