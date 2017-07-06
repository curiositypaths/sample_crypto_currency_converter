class UpdateTransations < ActiveRecord::Migration[5.1]
  def change
    change_column :transactions, :origin_currency_account, :integer
    change_column :transactions, :destination_currency_account, :integer
  end
end
