class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :customer, index: true
      t.integer :people
      t.timestamp :should_checkin_at
      t.timestamp :should_checkout_at

      t.timestamps
    end
  end
end
