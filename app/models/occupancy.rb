class Occupancy < ActiveRecord::Base
  belongs_to :room
  belongs_to :visit
end
