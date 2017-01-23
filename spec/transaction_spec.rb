require 'spec_helper'
require './lib/transaction.rb'

describe 'Transaction' do
  before(:each) do
    @transaction = Transaction.new
  end

  it 'expects a transaction to exist' do
    expect(@transaction).to be_an_instance_of Transaction
  end

end
