class Area < ActiveRecord::Base
  attr_accessor :distance, :weather

  has_many :sectors, dependent: :nullify
  has_many :pictures
  geocoded_by :location, if: :latitude.nil?
  after_validation :geocode, if: Proc.new { |a| a.location_changed? || a.latitude.nil? }
  has_many :conversations, :foreign_key => :sender_id

  validates :name, :description, :location, :latitude, :longitude, presence: true
end
