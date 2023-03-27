require 'rspec'
require 'httparty'
require_relative '../lib/pix_qrcode'
require_relative '../lib/code_hash'
require 'rspec_junit_formatter'


RSpec.configure do |config|
  config.color = true
  # config.formatter = 'RSpecJUnitFormatter'
  # config.add_formatter(:html)
end



