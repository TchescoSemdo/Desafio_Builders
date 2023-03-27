Dado("que eu tenho um Id válido") do
  @account_id = "62f87af90ba501353df77b95"
end

Quando("eu enviar uma solicitação GET") do
  @response = Account.get_account(@account_id)
end

Então("a API deve retornar um status 200") do
  expect(@response.code).to eq(200)
end

Então("as informações da conta associada ao Id informado") do
  account_info = Account.get_account_info(@response)
  expect(account_info["id"]).to eq(@account_id)
end



