class CreateOccupancies < ActiveRecord::Migration
  def change
    create_table :occupancies do |t|
      t.integer :room_id
      t.integer :visit_id
      t.integer :booking_id
      t.date :date

      t.timestamps
    end
  end
end
