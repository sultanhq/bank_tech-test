class Account
  def initialize
    @balance = 0
  end

  attr_reader :balance

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance > amount
      @balance -= amount
    else
      raise "Sorry, you cannot withdraw more than account balance (currently #{@balance})"
    end
  end
end
