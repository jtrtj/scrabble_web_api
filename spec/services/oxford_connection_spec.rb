require 'rails_helper'

describe OxfordConnection do
  context 'class methods' do
    it '.conn' do
      conn = OxfordConnection.conn
      word = 'foxes'
      response = conn.get("inflections/en/#{word}")
      parsed_response_body = JSON.parse(response.body)

      expect(parsed_response_body).to have_key("results")
    end
  end
end