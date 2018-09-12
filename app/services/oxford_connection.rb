class OxfordConnection
  def self.conn
    Faraday.new(:url => 'https://od-api.oxforddictionaries.com:443/api/v1') do |faraday|
      faraday.headers['app_key'] = ENV['oxford_app_key']
      faraday.headers['app_id'] = ENV['oxford_app_id']
      faraday.adapter  Faraday.default_adapter
    end
  end
end
