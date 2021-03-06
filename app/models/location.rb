class Location < ActiveRecord::Base
validates :location_name, :presence => true
validates :location_region, :presence => true
belongs_to :day
belongs_to :user
has_many :origin_days, :class_name => "Day", :foreign_key => "origin_location_id"
has_many :destination_days, :class_name => "Day", :foreign_key => "destination_location_id"
end
