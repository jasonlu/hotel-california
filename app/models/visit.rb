class Visit < ActiveRecord::Base
  belongs_to :customer
  belongs_to :room
  
  has_many :occupancies
end
