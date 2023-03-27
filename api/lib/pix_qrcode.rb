require 'base64'

class PixQRCodePage
  include HTTParty
  base_uri ENV['PIX_API_URL']

  def post_qr_code(encoded_value)
    self.class.post('/codes', body: { encoded_value: encoded_value })
  end

  def parse_response(response)
    JSON.parse(response.body)
  end

  def get_status(response)
    response.code
  end

  def get_error_message(response)
    parse_response(response)['error_message']
  end

  def get_success_message(response)
    parse_response(response)['success_message']
  end
end

