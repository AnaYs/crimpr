class Area < ActiveRecord::Base
  has_many :sectors
  has_many :pictures
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
