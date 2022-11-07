class PlotService < DatabaseService 
  def self.get_plot_endpoint(garden_id, plot_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots/#{plot_id}")
    parse(response)
  end

  def self.get_plot_plants_endpoint(garden_id, plot_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants")
    parse(response)
  end

  def self.create_plot_for_garden_endpoint(garden_id, plot_params)
    conn.post("/api/v1/gardens/#{garden_id}/plots", plot_params.to_json)
  end

  def self.delete_garden_plot_endpoint(garden_id, plot_id)
    conn.delete("/api/v1/gardens/#{garden_id}/plots/#{plot_id}")
  end
end