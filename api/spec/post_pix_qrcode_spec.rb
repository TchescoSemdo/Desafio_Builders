require 'httparty'
require 'json'
require 'dotenv/load'
require_relative '../spec/spec_helper'
require_relative '../lib/pix_qrcode'

describe 'PIX API' do   
  extend PixCode # inclusão do módulo PixCode  
  endpoint = ENV['PIX_API_URL'] # lê o valor da variável de ambiente

  before do
    $end_to_end = nil
    $conciliation_id = nil
    $total_value = nil
  end

  context 'ao validar um código PIX válido' do
    it 'a resposta deve indicar que o código PIX trouxe os dados com sucesso' do
      headers = {
        'Content-Type': 'application/json'
      }
      
      payload = {
        encoded_value: PixCode.base64_hashes.first
      }.to_json
      
      puts "Payload: #{payload}" # exibe o payload antes de fazer a requisição
      
      response = HTTParty.post(endpoint, headers: headers, body: payload)
      
      puts "Status da resposta: #{response.code}" # exibe o status da resposta
      
      puts "Corpo da resposta: #{response.body}" # exibe o corpo da resposta

      # Armazena os valores em variáveis globais
      $end_to_end = JSON.parse(response.body)['end_to_end']
      $conciliation_id = JSON.parse(response.body)['conciliation_id']
      $total_value = JSON.parse(response.body)['total_value']
      
      expect(response.code).to eq(200)
      expect(JSON.parse(response.body).keys).to include('end_to_end', 'conciliation_id', 'total_value')
      puts "O primeiro teste passou!"
    end
  end

  context 'ao validar um código PIX inválido' do
    it 'deve retornar o status 404 e uma mensagem de erro "qrcode_not_found' do
      headers = {
        'Content-Type': 'application/json'
      }
      
      payload = {
        encoded_value: PixCode.base64_hashes[3]
      }.to_json
      
      response = HTTParty.post(endpoint, headers: headers, body: payload)
      
      puts "Status da resposta: #{response.code}" # exibe o status da resposta
      
      puts "Corpo da resposta: #{response.body}" # exibe o corpo da resposta
      
      expect(response.code).to eq(404)
      expect(JSON.parse(response.body)['error']).to eq('qrcode_not_found')
    end
  end
end
