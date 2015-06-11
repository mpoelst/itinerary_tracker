class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, :presence => true, :uniqueness => true
  has_many :itineraries
  has_many :locations, :through => :days
  has_many :days, :through => :itineraries

  #def locations
  #@locations ||= (
  #  origin_ids = days.pluck(:origin_location_id)
  #  destination_ids = days.pluck(:destination_location_id)
  #  location_ids = [origin_ids, destination_ids].flatten.uniq
  #  Location.where(id: location_ids)
  #)
#end

  def name
    "#{first_name} #{last_name}"
  end
end

