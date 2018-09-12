class ValidationPresenter
  attr_reader :message

  def initialize(word)
    @word = word
    @message = ""
  end

  def get_response
    response = conn.get("inflections/en/#{@word}")
    if valid_json?(response)
      JSON.parse(response.body, symbolize_names: true)
      @message = "'#{@word}' is a valid word and its root form is 'fox'."
    else
      @message = "'#{@word}' is not a valid word."
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