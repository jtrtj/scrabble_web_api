class ValidationPresenter
  def initialize(word)
    @word = word
  end

  def get_response
    response = conn.get("inflections/en/#{@word}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    OxfordConnection.conn
  end
end