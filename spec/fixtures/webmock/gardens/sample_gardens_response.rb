module SampleGardenResponse 
  def garden_response
    {
      "data": {
          "id": "1",
          "type": "garden",
          "attributes": {
              "name": "Test Garden",
              "zip_code": "12345",
              "state_code": "CA",
              "user_id": 1,
              "weather_forecast": nil
          },
          "relationships": {
              "plots": {
                  "data": []
              }
          }
      }
  }
  end

  def garden_with_plot_response 
    {
    "data": [
            {
              "id": "1",
              "type": "garden",
              "attributes": {
                  "name": "Test Garden",
                  "zip_code": "80023",
                  "state_code": "CA",
                  "user_id": 1,
                  "weather_forecast": nil
              },
                "relationships": {
                    "plots": {
                        "data": [
                            {
                                "id": "1",
                                "type": "plot"
                            }
                        ]
                    }
                }
            }
        ]
    }
  end

  def plot_response 
    {
      "data": [
            {
                "id": "1",
                "type": "plot",
                "attributes": {
                    "name": "Test Plot",
                    "soil_ph_min": null,
                    "soil_ph_max": null,
                    "shade_tolerant?": null,
                    "contains_toxic?": null
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