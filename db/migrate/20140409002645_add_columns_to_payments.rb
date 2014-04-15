class AddColumnsToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :uuid, :string
  end
end
