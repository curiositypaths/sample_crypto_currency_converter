class TransactionController < ApplicationController
  def create
    params_mock_object = {origin_currency_account_id:1,destination_currency_account_id:2,origin_amount:10,destination_amount:1}
    origin_account=CurrencyAccount.find(params_mock_object[:origin_currency_account_id])
    destination_account=CurrencyAccount.find(params_mock_object[:destination_currency_account_id])
    #origin_currency = Currency.find(origin_account.currency_id)
    #destination_currency = Currency.find(destination_account.currency_id)
    if origin_account.balance >= params_mock_object[:origin_amount]
      origin_account.balance = origin_account.balance - params_mock_object[:origin_amount]
      destination_account.balance = destination_account.balance + params_mock_object[:destination_amount]
    end
  end
end
