class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :name
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
