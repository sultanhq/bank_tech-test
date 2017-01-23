require 'spec_helper'
require './lib/transaction.rb'

describe 'Transaction' do
  before (:each) do
    @transaction = Transaction.new(500,500)
  end

  it 'expects a transaction to be able to store a positive value on instantiation' do
    @transaction = Transaction.new(500,500)
    expect(@transaction.value).to eq 500
  end

  describe ' negative transaction' do
    it 'expects a transaction to be able to store a negative value on instantiation' do
      @transaction = Transaction.new(-500,0)
      expect(@transaction.value).to eq -500
    end
  end

  it 'expects a tranaction to be able to store the transaction date on instantiation' do
    todays_date = Time.now.strftime('%d/%m/%Y')
    expect(@transaction.date).to eq(todays_date)
  end

  it 'expects a transaction to be able to store the account balance on instantiation' do
    expect(@transaction.account_balance).to eq 500
  end
end
