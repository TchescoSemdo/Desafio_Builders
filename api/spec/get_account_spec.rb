require_relative '../lib/account'
require_relative '../features/support/account_data'
require 'json'

describe 'Account API' do
  before(:all) do
    @account = Account.new
  end

  context 'quando obtendo uma conta existente' do
    before(:all) do
      @account_data = AccountData::ACCOUNTS.sample
      @response = @account.get_account(@account_data[:id])
    end

    it 'retorna um código de status 200' do
      expect(@response.code).to eq(200)
    end

    it 'retorna as informações da conta' do
      response_body = JSON.parse(@response.body)
      expect(response_body['account_id']).to eq(@account_data[:id])
      expect(response_body['name']).to eq(@account_data[:name])
    end
  end
end
