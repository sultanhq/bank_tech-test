require 'spec_helper'
require './lib/transaction.rb'

describe 'Transaction' do
  it 'expects a transaction to be able to store a positive value on instantiation' do
    @transaction = Transaction.new(500)
    expect(@transaction.value).to eq 500
  end

  it 'expects a transaction to be able to store a negative value on instantiation' do
    @transaction = Transaction.new(-500)
    expect(@transaction.value).to eq -500
  end

  it 'expects a tranaction to be able to store a date on instantiation' do
    @transaction = Transaction.new(500)
    todays_date = Time.now.strftime('%d,%m,%Y')
    expect(@transaction.date).to eq(todays_date)
  end
end
