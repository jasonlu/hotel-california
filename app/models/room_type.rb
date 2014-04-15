class RoomType < ActiveRecord::Base
  has_many :rooms


  def photo_url
    read_attribute("photo_url") || "/img/noimage.jpg"
  end
end
