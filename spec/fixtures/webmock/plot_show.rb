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
end