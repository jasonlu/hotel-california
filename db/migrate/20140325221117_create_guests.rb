class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :fname
      t.string :lname
      t.references :customer, index: true

      t.timestamps
    end
  end
end
