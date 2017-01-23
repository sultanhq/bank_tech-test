require_relative 'transaction'

class Account
  def initialize
    @balance = 0
    @ledger = []
  end

  attr_reader :balance, :ledger

  def deposit(amount)
    @balance += amount.abs
    add_to_ledger(amount)
  end

  def withdraw(amount)
    if @balance > amount.abs
      @balance -= amount.abs
      add_to_ledger(-amount.abs)
    else
      raise "Sorry, you cannot withdraw more than account balance (currently #{@balance})"
    end
  end

  def statement
    output = ""
    header = "date       || credit || debit   || balance\n"
    output += header
    transactions = ""

    ledger.each do |transaction|
      if transaction.value > 0
        transactions += "#{transaction.date} || #{('%.02f' % transaction.value).to_s.ljust(6)}||         || #{'%.02f' % transaction.account_balance}\n"
      else
        transactions += "#{transaction.date} ||        || #{('%.02f' % transaction.value.abs).to_s.ljust(8)}|| #{'%.02f' % transaction.account_balance}\n"
      end
    end

    output += transactions
  end

  private

  def add_to_ledger(amount)
    ledger.unshift(Transaction.new(amount, @balance))
  end
end
