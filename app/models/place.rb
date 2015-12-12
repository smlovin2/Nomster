class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, :address, :presence => true
  validates :description, :presence => true, :length => {minimum: 3}
end
