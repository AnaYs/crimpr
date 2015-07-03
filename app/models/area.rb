class Area < ActiveRecord::Base
  attr_accessor :distance, :weather

  has_many :sectors
  has_many :pictures
  # geocoded_by :location, if: :latitude.nil?
  # after_validation :geocode, if: Proc.new { |a| a.location_changed? || a.latitude.nil? }
  has_many :conversations, :foreign_key => :sender_id
end
