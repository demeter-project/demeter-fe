module PlotPlantUpdateResponse

  def updated_plot_plant
    {
    "data": [
    {
    "id": "2",
    "type": "plot_plant",
    "attributes": {
    "quantity": 2,
    "date_planted": "2022-11-07",
    "plant_name": "whitestem gooseberry",
    "plant_id": "869"
    }
    }]}
  end

  def plot_plants_update_request 
    {
        "quantity": "2",
        "date_planted": "2022-11-07"
    }
  end
end