require 'spec_helper'
require './lib/transaction.rb'

describe 'Transaction' do
  
  it 'expects a transaction to store a positive value on instantiation' do
    @transaction = Transaction.new(500)
    expect(@transaction.value).to eq 500
  end

end
