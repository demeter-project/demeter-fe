class DatabaseService

  def self.garden_endpoint(user_id)
    response = conn.get('INSERT GARDEN ENDPOINT HERE')
    parse(response)
  end

  def self.plot_endpoint(garden_id)
    response = conn.get('INSERT PLOT ENDPOINT HERE')
    parse(response)
  end

  def self.plant_endpoint(plot_id)
    response = conn.get('INSERT PLANT ENDPOINT HERE')
    parse(response)
  end

  private
  def self.conn 
    Faraday.new(
      url: 'INSERT API BASE HERE'
    )
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_name: true)
  end
end