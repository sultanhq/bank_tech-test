require 'spec_helper'
require './lib/account.rb'

describe 'account' do
  it 'expects an account to exist' do
    account = Account.new
    expect(account).to be_an_instance_of(Account)
  end

  it 'expects a new acount to have a balance of zero' do
    account = Account.new
    expect(account.balance).to eq 0
  end

end
