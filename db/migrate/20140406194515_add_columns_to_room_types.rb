class AddColumnsToRoomTypes < ActiveRecord::Migration
  def change
    add_column :room_types, :photo_url, :text
    add_column :rooms, :photo_url, :text
  end
end
