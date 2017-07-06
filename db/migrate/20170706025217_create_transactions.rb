class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :origin_currency_account
      t.string :origin_currency_amount
      t.string :destination_currency_account
      t.string :destination_currency_amount

      t.timestamps
    end
  end
end
