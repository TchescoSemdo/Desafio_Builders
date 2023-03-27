require 'httparty'
require 'dotenv/load'

class Payment
    include HTTParty
    base_uri ENV['PAYMENT_URL']
  
    def post_payment(end_to_end, conciliation_id, amount)
      body = {
        end_to_end: end_to_end,
        conciliation_id: conciliation_id,
        amount: amount
      }
      puts "PAYMENT_URL: #{ENV['PAYMENT_URL']}"
      self.class.post('/api/payments', body: body.to_json)
    end
  end