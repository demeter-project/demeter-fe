class PlotPlantService < DatabaseService
  def self.create_plot_plant_endpoint(garden_id, plot_id, plant_ids)
    body = { plant_ids: plant_ids.join(',') }
    response = conn.patch("api/v1/gardens/#{garden_id}/plots/#{plot_id}", body.to_json)
    parse(response)
  end

  def self.update_plot_plant(garden_id, plot_id, plot_plant_id, date_planted, quantity)
    response = conn.patch("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants/#{plot_plant_id}",
                date_planted: date_planted,
                quantity: quantity)
    parse(response)
  end

  def self.delete_plot_plant_endpoint(garden_id, plot_id, plot_plant_id)
    conn.delete("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants/#{plot_plant_id}")
  end
end