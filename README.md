# Sample currency conversion transaction log
## Add User
jamie = User.create(first_name:'Jamie',last_name:'Ross')

## Add Account
jamie_account = Account.create(user_id:jamie.id)

## Add currencies
usd_currency = Currency.create(name:'USD')
bc_currency = Currency.create(name:'BitCoin')

## Add Currency Accounts
jamie_usd_account = CurrencyAccount.create(account_id:jamie_account.id,currency_id:usd_currency.id)

jamie_bc_account = CurrencyAccount.create(account_id:jamie_account.id,currency_id:bc_currency.id)

## Add a balance
jamie_usd_account.balance = 100
jamie_usd_account.save

## Transaction
See Transaction Controller
