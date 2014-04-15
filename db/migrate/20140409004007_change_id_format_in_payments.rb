class ChangeIdFormatInPayments < ActiveRecord::Migration
  def change
    change_column :payments, :id, :string
    change_column :billing_addresses, :payment_id, :string
  end
end
