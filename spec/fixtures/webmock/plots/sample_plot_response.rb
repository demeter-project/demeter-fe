module SamplePlotResponse 
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
              "weather_forecast": [
                {
                  "period": "2022-11-17T03:00:00.000Z",
                  "temp": 32.56,
                  "weather": "Few Clouds",
                  "icon_path": "http://openweathermap.org/img/wn/02n.png"
                },
                {
                  "period": "2022-11-17T09:00:00.000Z",
                  "temp": 30.7,
                  "weather": "Overcast Clouds",
                  "icon_path": "http://openweathermap.org/img/wn/04n.png"
                },
                {
                  "period": "2022-11-17T15:00:00.000Z",
                  "temp": 25.59,
                  "weather": "Light Snow",
                  "icon_path": "http://openweathermap.org/img/wn/13d.png"
                },
                {
                  "period": "2022-11-17T21:00:00.000Z",
                  "temp": 27.37,
                  "weather": "Overcast Clouds",
                  "icon_path": "http://openweathermap.org/img/wn/04d.png"
                },
                {
                  "period": "2022-11-18T03:00:00.000Z",
                  "temp": 21.07,
                  "weather": "Light Snow",
                  "icon_path": "http://openweathermap.org/img/wn/13n.png"
                },
                {
                  "period": "2022-11-18T09:00:00.000Z",
                  "temp": 17.1,
                  "weather": "Light Snow",
                  "icon_path": "http://openweathermap.org/img/wn/13n.png"
                },
                {
                  "period": "2022-11-18T15:00:00.000Z",
                  "temp": 16.25,
                  "weather": "Light Snow",
                  "icon_path": "http://openweathermap.org/img/wn/13d.png"
                },
                {
                  "period": "2022-11-18T21:00:00.000Z",
                  "temp": 25.86,
                  "weather": "Scattered Clouds",
                  "icon_path": "http://openweathermap.org/img/wn/03d.png"
                },
                {
                  "period": "2022-11-19T03:00:00.000Z",
                  "temp": 21.79,
                  "weather": "Clear Sky",
                  "icon_path": "http://openweathermap.org/img/wn/01n.png"
                },
                {
                  "period": "2022-11-19T09:00:00.000Z",
                  "temp": 21.52,
                  "weather": "Clear Sky",
                  "icon_path": "http://openweathermap.org/img/wn/01n.png"
                },
                {
                  "period": "2022-11-19T15:00:00.000Z",
                  "temp": 24.51,
                  "weather": "Clear Sky",
                  "icon_path": "http://openweathermap.org/img/wn/01d.png"
                }
              ]
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
      "data": {
          "id": "1",
          "type": "garden",
          "attributes": {
              "name": "Test Garden",
              "zip_code": "12345",
              "state_code": "CA",
              "user_id": 1,
                  "weather_forecast": [
                    {
                      "period": "2022-11-17T03:00:00.000Z",
                      "temp": 32.56,
                      "weather": "Few Clouds",
                      "icon_path": "http://openweathermap.org/img/wn/02n.png"
                    },
                    {
                      "period": "2022-11-17T09:00:00.000Z",
                      "temp": 30.7,
                      "weather": "Overcast Clouds",
                      "icon_path": "http://openweathermap.org/img/wn/04n.png"
                    },
                    {
                      "period": "2022-11-17T15:00:00.000Z",
                      "temp": 25.59,
                      "weather": "Light Snow",
                      "icon_path": "http://openweathermap.org/img/wn/13d.png"
                    },
                    {
                      "period": "2022-11-17T21:00:00.000Z",
                      "temp": 27.37,
                      "weather": "Overcast Clouds",
                      "icon_path": "http://openweathermap.org/img/wn/04d.png"
                    },
                    {
                      "period": "2022-11-18T03:00:00.000Z",
                      "temp": 21.07,
                      "weather": "Light Snow",
                      "icon_path": "http://openweathermap.org/img/wn/13n.png"
                    },
                    {
                      "period": "2022-11-18T09:00:00.000Z",
                      "temp": 17.1,
                      "weather": "Light Snow",
                      "icon_path": "http://openweathermap.org/img/wn/13n.png"
                    },
                    {
                      "period": "2022-11-18T15:00:00.000Z",
                      "temp": 16.25,
                      "weather": "Light Snow",
                      "icon_path": "http://openweathermap.org/img/wn/13d.png"
                    },
                    {
                      "period": "2022-11-18T21:00:00.000Z",
                      "temp": 25.86,
                      "weather": "Scattered Clouds",
                      "icon_path": "http://openweathermap.org/img/wn/03d.png"
                    },
                    {
                      "period": "2022-11-19T03:00:00.000Z",
                      "temp": 21.79,
                      "weather": "Clear Sky",
                      "icon_path": "http://openweathermap.org/img/wn/01n.png"
                    },
                    {
                      "period": "2022-11-19T09:00:00.000Z",
                      "temp": 21.52,
                      "weather": "Clear Sky",
                      "icon_path": "http://openweathermap.org/img/wn/01n.png"
                    },
                    {
                      "period": "2022-11-19T15:00:00.000Z",
                      "temp": 24.51,
                      "weather": "Clear Sky",
                      "icon_path": "http://openweathermap.org/img/wn/01d.png"
                    }
                  ]
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
    }
  end

  def plots_response
    {
      "data": [
            {
                "id": "1",
                "type": "plot",
                "attributes": {
                    "name": "Test Plot",
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
        ]
    }
  end

  def plot_response
    {
        "data": {
            "id": "1",
            "type": "plot",
            "attributes": {
                "name": "Test Plot",
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

  def plots_response_no_plots 
    {
        "data": []
    }
  end

  def plot_create_request 
    {
        "name": "Test Plot"
    }
  end
end