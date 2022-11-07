module PlotPlantCreateResponse
  def plot_plant_create
    {
      "data": {
          "id": "1",
          "type": "plot",
          "attributes": {
              "name": "Native Wildflowers",
              "soil_ph_min": "6.8",
              "soil_ph_max": "7.5",
              "shade_tolerant?": false,
              "contains_toxic?": false
          },
          "relationships": {
              "plants": {
                  "data": [
                      {
                          "id": "692",
                          "type": "plant"
                      },
                      {
                          "id": "869",
                          "type": "plant"
                      },
                      {
                          "id": "876",
                          "type": "plant"
                      }
                  ]
              }
          }
      }
  }
  end
end