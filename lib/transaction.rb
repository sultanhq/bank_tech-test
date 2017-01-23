class Transaction
  def initialize(value,account_balance)
    @value = value
    @date = Time.now.strftime('%d/%m/%Y')
    @account_balance = account_balance
  end

  attr_reader :value, :date, :account_balance
end
