module GardenCreateResponse

  def new_garden
    {
      "data": {
          "id": "1",
          "type": "garden",
          "attributes": {
              "name": "Test Garden",
              "zip_code": "80223",
              "state_code": "CO",
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

  def new_garden_request_body
    {
      "name": "Test Garden",
      "zip_code": "80223",
      "state_code": "CO",
      "user_id": 1
    }
  end

  def plot_index_empty
    {

    }
  end

  def garden_show
    {
      "data": {
          "id": "1",
          "type": "garden",
          "attributes": {
              "name": "Test Garden",
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
                  "data": []
              }
          }
      }
    }
  end

  def plots_index_empty
    {
      "data": []
    }
  end
end