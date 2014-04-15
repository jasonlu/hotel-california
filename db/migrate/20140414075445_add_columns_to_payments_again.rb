class AddColumnsToPaymentsAgain < ActiveRecord::Migration
  def change
    add_column :payments, :price, :float
    add_column :payments, :name_on_card, :string
  end
end
