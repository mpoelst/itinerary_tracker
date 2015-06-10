class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :presence => true, :uniqueness => true
  has_many :itineraries
  has_many :locations, :through => :days
  has_many :days, :through => :itineraries

  def name
    "#{first_name} #{last_name}"
  end
end

