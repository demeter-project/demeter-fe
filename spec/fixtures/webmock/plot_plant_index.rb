module PlotPlantIndexResponse
  def plot_plant_index
    {
      "data": [
      {
      "id": "2",
      "type": "plot_plant",
      "attributes": {
      "quantity": nil,
      "date_planted": nil,
      "plant_name": "whitestem gooseberry",
      "plant_id": "869"
      }
      },
      {
      "id": "3",
      "type": "plot_plant",
      "attributes": {
      "quantity": nil,
      "date_planted": nil,
      "plant_name": "prickly rose",
      "plant_id": "876"
      }
      }
      ]
      }
  end

  def plot_plant_index_after_delete
    {
      "data": [
   
      {
      "id": "3",
      "type": "plot_plant",
      "attributes": {
      "quantity": nil,
      "date_planted": nil,
      "plant_name": "prickly rose",
      "plant_id": "876"
      }
      }
      ]
      }
  end
end