module PlotShowResponse
  def plot_show  
    {
      "data": {
          "id": "1",
          "type": "plot",
          "attributes": {
              "name": "Plot 1",
              "soil_ph_min": nil,
              "soil_ph_max": nil,
              "shade_tolerant?": nil,
              "contains_toxic?": nil
          },
          "relationships": {
              "plants": {
                  "data": []
              }
          }
      }
    }
  end

  def plot_show_attributes
    {
        "data": {
          "id": "1",
          "type": "plot",
          "attributes": {
            "name": "Succulents",
            "soil_ph_min": 5.7,
            "soil_ph_max": 7,
            "shade_tolerant": true,
            "contains_toxic?": true
          }
        }
      }
  end
end