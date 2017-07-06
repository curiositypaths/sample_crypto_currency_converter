class Transaction < ApplicationRecord
  belongs_to origin_account, class_name: 'CurrencyAccount', foreign_key: :origin_currency_account
  belongs_to destination_account, class_name: 'CurrencyAccount', foreign_key: :destination_currency_account
end
