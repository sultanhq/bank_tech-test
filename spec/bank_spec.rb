require 'spec_helper'
require './lib/account.rb'

describe 'account' do
  it 'expects an account to exist' do
    account = Account.new
    expect(account).to be_an_instance_of(Account)
  end

end
