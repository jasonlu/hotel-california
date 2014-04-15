class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :customer, index: true
      t.references :visit, index: true
      t.string :method
      t.string :credit_card_no
      t.boolean :paid
      t.timestamp :paid_at

      t.timestamps
    end
  end
end
