class ChangeNameInRoomOccupations < ActiveRecord::Migration
  def change
    rename_column :room_occupations, :booking_id_id ,:booking_id
  end
end
