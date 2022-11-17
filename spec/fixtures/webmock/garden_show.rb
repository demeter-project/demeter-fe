module GardenShowResponse
  def garden_show
    {
        "data": {
          "id": "1",
          "type": "garden",
          "attributes": {
            "name": "Backyard Garden",
            "zip_code": "80223",
            "state_code": "CO",
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
                },
                {
                  "id": "2",
                  "type": "plot"
                },
                {
                  "id": "3",
                  "type": "plot"
                }
              ]
            }
          }
        }
      }
  end

  def plot_index
    {
      "data": [
          {
              "id": "1",
              "type": "plot",
              "attributes": {
                  "name": "Plot 1",
                  "soil_ph_min": 111,
                  "soil_ph_max": 222,
                  "shade_tolerant?": true,
                  "contains_toxic?": false
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
                  "soil_ph_min": 33,
                  "soil_ph_max": 44,
                  "shade_tolerant?": false,
                  "contains_toxic?": true
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
                  "soil_ph_min": 555,
                  "soil_ph_max": 666,
                  "shade_tolerant?": false,
                  "contains_toxic?": false
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

  def plot_show
    {
        "data": {
          "id": "1",
          "type": "plot",
          "attributes": {
            "name": "Succulents",
            "soil_ph_min": 5.7,
            "soil_ph_max": 7,
            "shade_tolerant?": true,
            "contains_toxic?": true
          }
        }
      }
  end

  def plot_plant_index
    {
        "data": [
          {
            "id": "3",
            "type": "plot_plant",
            "attributes": {
              "plant_id": "15",
              "plant_name": "Common Clover",
              "quantity": 5,
              "date_planted": "2022-05-18"
            }
          },
          {
            "id": "4",
            "type": "plot_plant",
            "attributes": {
              "plant_id": "185",
              "plant_name": "Columbine",
              "quantity": nil,
              "date_planted": nil
            }
          }
        ]
      }
  end

  def garden_weather_nil
    { "data": {
        "id": "1",
        "type": "garden",
        "attributes": {
            "name": "Big Garden",
            "zip_code": "05408",
            "state_code": "VT",
            "user_id": 1,
            "weather_forecast": nil }
            }
        }
  end
end
