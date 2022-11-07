module PlotIndexResponse
  def plot_index
    {
      "data": [
          {
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
          },
          {
              "id": "2",
              "type": "plot",
              "attributes": {
                  "name": "Plot 2",
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
          },
          {
              "id": "3",
              "type": "plot",
              "attributes": {
                  "name": "Plot 3",
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
      ]
  }
  end
end