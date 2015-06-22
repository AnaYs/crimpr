class Area < ActiveRecord::Base
  has_many :sectors
  has_many :pictures
end
