class Area < ActiveRecord::Base
  attr_accessor :distance, :weather

  has_many :sectors
  has_many :pictures
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
  has_many :conversations, :foreign_key => :sender_id
end
