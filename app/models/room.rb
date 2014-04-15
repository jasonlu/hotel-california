class Room < ActiveRecord::Base
  belongs_to :room_type
  has_many :bookings
  has_many :occupancies


  def self.empty_rooms(checkin, checkout)
    booked_rooms = Occupancy.where("date >= ? AND date < ?", checkin, checkout).select(:room_id)
    Room.where("id NOT IN (?)", booked_rooms)
  end

  def base_rate
    read_attribute(:base_rate) || self.room_type.base_rate
  end

  def photo_url
    read_attribute(:photo_url) || self.room_type.photo_url
  end

  def name
    self.room_type.name
  end

  def beds
    read_attribute(:beds).blank? ? self.room_type.beds : read_attribute(:beds)
  end

  def bed_type
    read_attribute(:bed_type).blank? ? self.room_type.bed_type : read_attribute(:bed_type)
  end

  def capacity
    read_attribute(:capacity).blank? ? self.room_type.capacity : read_attribute(:capacity)
  end

end
