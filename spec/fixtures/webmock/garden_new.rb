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
                      "id": 1,
                      "day": "Today",
                      "start_time": "2022-11-06T10:00:00-07:00",
                      "end_time": "2022-11-06T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 52,
                      "temperature_unit": "F",
                      "temperature_trend": "falling",
                      "wind_speed": "12 mph",
                      "wind_direction": "ENE",
                      "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                      "short_forecast": "Mostly Cloudy",
                      "detailed_forecast": "Mostly cloudy. High near 52, with temperatures falling to around 48 in the afternoon. East northeast wind around 12 mph."
                  },
                  {
                      "id": 2,
                      "day": "Tonight",
                      "start_time": "2022-11-06T18:00:00-07:00",
                      "end_time": "2022-11-07T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 32,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "9 mph",
                      "wind_direction": "SSW",
                      "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                      "short_forecast": "Partly Cloudy",
                      "detailed_forecast": "Partly cloudy, with a low around 32. South southwest wind around 9 mph."
                  },
                  {
                      "id": 3,
                      "day": "Monday",
                      "start_time": "2022-11-07T06:00:00-07:00",
                      "end_time": "2022-11-07T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 62,
                      "temperature_unit": "F",
                      "temperature_trend": "falling",
                      "wind_speed": "3 to 9 mph",
                      "wind_direction": "N",
                      "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                      "short_forecast": "Sunny",
                      "detailed_forecast": "Sunny. High near 62, with temperatures falling to around 55 in the afternoon. North wind 3 to 9 mph, with gusts as high as 16 mph."
                  },
                  {
                      "id": 4,
                      "day": "Monday Night",
                      "start_time": "2022-11-07T18:00:00-07:00",
                      "end_time": "2022-11-08T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 38,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "9 mph",
                      "wind_direction": "S",
                      "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                      "short_forecast": "Partly Cloudy",
                      "detailed_forecast": "Partly cloudy, with a low around 38. South wind around 9 mph."
                  },
                  {
                      "id": 5,
                      "day": "Tuesday",
                      "start_time": "2022-11-08T06:00:00-07:00",
                      "end_time": "2022-11-08T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 70,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "9 to 13 mph",
                      "wind_direction": "SSW",
                      "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                      "short_forecast": "Mostly Sunny",
                      "detailed_forecast": "Mostly sunny, with a high near 70. South southwest wind 9 to 13 mph, with gusts as high as 22 mph."
                  },
                  {
                      "id": 6,
                      "day": "Tuesday Night",
                      "start_time": "2022-11-08T18:00:00-07:00",
                      "end_time": "2022-11-09T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 41,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "12 mph",
                      "wind_direction": "SSW",
                      "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                      "short_forecast": "Mostly Clear",
                      "detailed_forecast": "Mostly clear, with a low around 41."
                  },
                  {
                      "id": 7,
                      "day": "Wednesday",
                      "start_time": "2022-11-09T06:00:00-07:00",
                      "end_time": "2022-11-09T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 67,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "10 to 18 mph",
                      "wind_direction": "SSW",
                      "icon": "https://api.weather.gov/icons/land/day/few/rain_showers,20?size=medium",
                      "short_forecast": "Sunny then Slight Chance Rain Showers",
                      "detailed_forecast": "A slight chance of rain showers after 5pm. Sunny, with a high near 67. Chance of precipitation is 20%."
                  },
                  {
                      "id": 8,
                      "day": "Wednesday Night",
                      "start_time": "2022-11-09T18:00:00-07:00",
                      "end_time": "2022-11-10T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 32,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "9 to 13 mph",
                      "wind_direction": "WSW",
                      "icon": "https://api.weather.gov/icons/land/night/rain_showers/snow?size=medium",
                      "short_forecast": "Chance Rain Showers then Chance Rain And Snow Showers",
                      "detailed_forecast": "A chance of rain showers before midnight, then a chance of rain and snow showers. Partly cloudy, with a low around 32."
                  },
                  {
                      "id": 9,
                      "day": "Thursday",
                      "start_time": "2022-11-10T06:00:00-07:00",
                      "end_time": "2022-11-10T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 48,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "9 mph",
                      "wind_direction": "WNW",
                      "icon": "https://api.weather.gov/icons/land/day/snow?size=medium",
                      "short_forecast": "Chance Snow Showers",
                      "detailed_forecast": "A chance of snow showers. Mostly sunny, with a high near 48."
                  },
                  {
                      "id": 10,
                      "day": "Thursday Night",
                      "start_time": "2022-11-10T18:00:00-07:00",
                      "end_time": "2022-11-11T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 23,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "5 to 8 mph",
                      "wind_direction": "WSW",
                      "icon": "https://api.weather.gov/icons/land/night/snow/few?size=medium",
                      "short_forecast": "Slight Chance Snow Showers then Mostly Clear",
                      "detailed_forecast": "A slight chance of snow showers before 11pm. Mostly clear, with a low around 23."
                  },
                  {
                      "id": 11,
                      "day": "Veterans Day",
                      "start_time": "2022-11-11T06:00:00-07:00",
                      "end_time": "2022-11-11T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 47,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "7 mph",
                      "wind_direction": "ESE",
                      "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                      "short_forecast": "Sunny",
                      "detailed_forecast": "Sunny, with a high near 47."
                  },
                  {
                      "id": 12,
                      "day": "Friday Night",
                      "start_time": "2022-11-11T18:00:00-07:00",
                      "end_time": "2022-11-12T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 22,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "6 mph",
                      "wind_direction": "SSW",
                      "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                      "short_forecast": "Mostly Clear",
                      "detailed_forecast": "Mostly clear, with a low around 22."
                  },
                  {
                      "id": 13,
                      "day": "Saturday",
                      "start_time": "2022-11-12T06:00:00-07:00",
                      "end_time": "2022-11-12T18:00:00-07:00",
                      "day_time": true,
                      "temperature": 46,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "7 mph",
                      "wind_direction": "E",
                      "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                      "short_forecast": "Sunny",
                      "detailed_forecast": "Sunny, with a high near 46."
                  },
                  {
                      "id": 14,
                      "day": "Saturday Night",
                      "start_time": "2022-11-12T18:00:00-07:00",
                      "end_time": "2022-11-13T06:00:00-07:00",
                      "day_time": false,
                      "temperature": 23,
                      "temperature_unit": "F",
                      "temperature_trend": nil,
                      "wind_speed": "6 mph",
                      "wind_direction": "NW",
                      "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                      "short_forecast": "Partly Cloudy",
                      "detailed_forecast": "Partly cloudy, with a low around 23."
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