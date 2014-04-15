class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.references :room_type_id, index: true
      t.string :bed_type
      t.float :base_rate
      t.boolean :non_smoking
      t.boolean :pets_welcome
      t.boolean :family_welcome
      t.integer :beds
      t.text :tags
      t.integer :capacity

      t.timestamps
    end
  end
end
