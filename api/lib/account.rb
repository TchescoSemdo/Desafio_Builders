require 'dotenv/load'

class Account
  include HTTParty
  base_uri ENV["API_URL"]
  format :json
  puts ENV["API_URL"]
  
  def get_account(account_id)
    self.class.get("/accounts/#{account_id}")
  end

  def get_account_info(response)
    response.parsed_response["data"]
  end
end

