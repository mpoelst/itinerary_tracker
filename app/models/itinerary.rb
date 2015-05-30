class Itinerary < ActiveRecord::Base
validates :start_date, :presence => true
validates :itinerary_name, :presence => true
validates :user_id, :presence => true
belongs_to :user
has_many :days
end
