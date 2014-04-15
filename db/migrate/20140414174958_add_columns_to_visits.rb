class AddColumnsToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :checkin, :date
    add_column :visits, :checkout, :date
    add_column :visits, :days, :integer
    add_column :visits, :rate, :float
    add_column :visits, :room_id, :integer
    rename_column :billing_addresses, :name_on_card, :receiver
  end
end
