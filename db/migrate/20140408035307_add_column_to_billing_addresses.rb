class AddColumnToBillingAddresses < ActiveRecord::Migration
  def change
    add_column :billing_addresses, :name_on_card, :string
  end
end
