class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, :address, :presence => true
  validates :description, :presence => true, :length => {minimum: 3}
end
