class RenameColumnInRooms < ActiveRecord::Migration
  def change
    rename_column :rooms, :room_type_id_id, :room_type_id
  end
end
