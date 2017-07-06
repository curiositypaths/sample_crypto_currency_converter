class Currency < ApplicationRecord
  has_many :currency_accounts
  def base_value
    case self.name
    when 'USD'
      1
    when 'BitCoin'
      10
    else
      nil
    end
  end
end
