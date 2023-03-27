
require_relative '../lib/pix_qrcode'

Given('I have a valid PIX QR code') do
  @pix_code = PixCode.base64_hashes.first
end

Given('I have an invalid PIX QR code') do
  @pix_code = 'invalid_base64'
end

When('I query the PIX API with the code') do
  @response = PixAPI.validate_pix_code(@pix_code)
end

Then('the API should respond with a success status code') do
  expect(@response.code).to eq(200)
end

Then('the API should respond with a "PIX code found successfully" message') do
  expect(JSON.parse(@response.body)['message']).to eq('PIX code found successfully')
end

Then('the API should respond with a not found status code') do
  expect(@response.code).to eq(404)
end

Then('the API should respond with a "qrcode_not_found" error message') do
  expect(JSON.parse(@response.body)['error']).to eq('qrcode_not_found')
end




























# Dado('que existe um código PIX válido') do
#     @pix_code = '01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF'
#   end
  
#   Dado('eu envio uma solicitação POST para /api/builders/pix/codes com um valor de código PIX codificado válido que já está registrado') do
#     @pix_code = '01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF01234567890ABCDEF'
#     post '/api/builders/pix/codes', { qrcode: @pix_code }
#     expect(last_response.status).to eq(200)
#   end
  
#   Quando('uma solicitação POST é enviada com o código PIX convertido para https://vagas.builders/api/builders/pix/codes') do
#     post '/api/builders/pix/codes', { qrcode: @pix_code }
#   end
  
#   Então('a API deve retornar um status {int}') do |status|
#     expect(last_response.status).to eq(status)
#   end
  
#   Então('a resposta deve indicar que o código PIX trouxe os dados com sucesso.') do
#     expect(last_response.body).to include('success')
#   end
  
#   Então('a mensagem de erro {string}') do |error_message|
#     expect(last_response.body).to include(error_message)
#   end
  