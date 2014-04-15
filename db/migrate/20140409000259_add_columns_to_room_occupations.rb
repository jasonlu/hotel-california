class AddColumnsToRoomOccupations < ActiveRecord::Migration
  def change
    add_column :room_occupations, :room_id, :integer
    add_column :room_occupations, :visit_id, :integer
  end
end
