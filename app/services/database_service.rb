class DatabaseService
  private
  def self.conn
    Faraday.new('https://demeter-be.herokuapp.com', headers: { "Content-Type" => "application/json" })
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end
end
