class CreateCurrencyAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :currency_accounts do |t|
      t.integer :account_id
      t.integer :currency_id
      t.decimal :balance

      t.timestamps
    end
  end
end
