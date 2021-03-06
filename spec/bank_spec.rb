require 'spec_helper'
require './lib/account.rb'

describe 'Bank' do
  before(:each) do
    @account = Account.new
  end

  describe 'account' do
    it 'expects a new acount to have a balance of zero' do
      expect(@account.balance).to eq 0
    end

    it 'expect an account to accept deposits funds' do
      @account.deposit(1000)
      expect(@account.balance).to eq 1000
    end

    it 'expects an account to accept multiple deposits' do
      @account.deposit(1000)
      @account.deposit(2000)
      expect(@account.balance).to eq 3000
    end

    it 'expects an account to be able to withdraw funds' do
      @account.deposit(1000)
      @account.withdraw(500)
      expect(@account.balance).to eq 500
    end

    it 'expects an account not to withdraw more than the account balance' do
      @account.deposit(500)
      message = 'Sorry, you cannot withdraw more than account balance (currently 500)'
      expect { @account.withdraw(1000) }.to raise_error(message)
    end
  end

  describe 'statement' do
    before(:each) do
      @accoutn = Account.new
      @account.deposit(1000)
      @account.deposit(2000)
      @account.withdraw(500)
    end

    it 'expects an account to have a ledger' do
      expect(@account.ledger.length).to eq 3
    end

    it 'expects an accoutn to have a statement' do
      todays_date = Time.now.strftime('%d/%m/%Y')
      expect(@account.statement).to eq("date       || credit || debit   || balance
23/01/2017 ||        || 500.00  || 2500.00
23/01/2017 || 2000.00||         || 3000.00
23/01/2017 || 1000.00||         || 1000.00
")
    end
  end
end
