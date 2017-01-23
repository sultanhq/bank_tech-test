require 'spec_helper'
require './lib/account.rb'

describe 'Bank' do
  before(:each) do
    @account = Account.new
  end

  describe 'account' do
    it 'expects an account to exist' do
      expect(@account).to be_an_instance_of(Account)
    end

    it 'expects a new acount to have a balance of zero' do
      expect(@account.balance).to eq 0
    end

  end

end
