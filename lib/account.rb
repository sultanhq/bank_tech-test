require_relative 'transaction'

class Account
  def initialize
    @balance = 0
    @ledger = []
  end

  attr_reader :balance, :ledger

  def deposit(amount)
    add_to_ledger(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance > amount
      @balance -= amount
      add_to_ledger(-amount)
    else
      raise "Sorry, you cannot withdraw more than account balance (currently #{@balance})"
    end
  end

  private

  def add_to_ledger(amount)
    ledger.push(Transaction.new(amount))
  end
end
