require 'dotenv/load'
require 'httparty'
require_relative '../lib/pix_payment'

PIX_ENDPOINT = ENV['PIX_ENDPOINT']


World do
  PixPayment.new
end

