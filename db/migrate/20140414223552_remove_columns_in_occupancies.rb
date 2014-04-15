class RemoveColumnsInOccupancies < ActiveRecord::Migration
  def change
    remove_column :occupancies, :booking_id
  end
end
