class ValidationPresenter

  def initialize(word)
    @word = word
  end

  def get_response
    response = conn.get("inflections/en/#{@word}")
    if valid_json?(response.body)
      results = JSON.parse(response.body, symbolize_names: true)[:results]
      @message = "'#{@word}' is a valid word and its root form is '#{results[0][:lexicalEntries][0][:inflectionOf][0][:text]}'."
    else
      @message = "'#{@word}' is not a valid word."
    end
  end

  
  private

  def valid_json?(json)
    JSON.parse(json)
    return true
  rescue JSON::ParserError => e
    return false
  end
  
  def conn
    OxfordConnection.conn
  end
end