Dado("que informo um end-to-end válido") do
    @end_to_end = $end_to_end
end
  
Dado("informo um ID de conciliação válido") do
    @conciliation_id = $conciliation_id
end
  
Dado("informo um valor válido para o pagamento") do
    @amount = $total_value
end
  
Quando("eu envio uma requisição POST") do
    @response = PixPayment.new.create_payment(@end_to_end, @conciliation_id, @amount)
end
  
Então("a API deve retornar o status code 201") do
    expect(@response.code).to eq(201)
end
  
Então("deve retornar uma mensagem de sucesso") do
    expect(@response.body).to include('success')
end
  
Dado("que informo um end-to-end inválido") do
    @end_to_end = 'invalid_end_to_end'
end
  
Então("a API deve retornar o status code 400") do
    expect(@response.code).to eq(400)
end
  
Então("deve retornar uma mensagem de erro informando que o end-to-end é inválido") do
    expect(@response.body).to include('invalid_request')
end
  