class CreateDiscountRules < ActiveRecord::Migration
  def change
    create_table :discount_rules do |t|
      t.string :rules
      t.integer :percentage_rate
      t.float :fixed_rate

      t.timestamps
    end
  end
end
