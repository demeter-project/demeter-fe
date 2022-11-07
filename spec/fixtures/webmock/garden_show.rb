module GardenShowResponse
  def garden_show
    { "data": {
      "id": "1",
      "type": "garden",
      "attributes": {
          "name": "Big Garden",
          "zip_code": "05408",
          "state_code": "VT",
          "user_id": 1,
          "weather_forecast": [
              {
                  "id": 1,
                  "day": "This Afternoon",
                  "start_time": "2022-11-04T15:00:00-04:00",
                  "end_time": "2022-11-04T18:00:00-04:00",
                  "day_time": true,
                  "temperature": 68,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "15 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                  "short_forecast": "Mostly Sunny",
                  "detailed_forecast": "Mostly sunny, with a high near 68. South wind around 15 mph."
              },
              {
                  "id": 2,
                  "day": "Tonight",
                  "start_time": "2022-11-04T18:00:00-04:00",
                  "end_time": "2022-11-05T06:00:00-04:00",
                  "day_time": false,
                  "temperature": 58,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "16 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                  "short_forecast": "Partly Cloudy",
                  "detailed_forecast": "Partly cloudy, with a low around 58. South wind around 16 mph."
              },
              {
                  "id": 3,
                  "day": "Saturday",
                  "start_time": "2022-11-05T06:00:00-04:00",
                  "end_time": "2022-11-05T18:00:00-04:00",
                  "day_time": true,
                  "temperature": 71,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "17 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                  "short_forecast": "Mostly Sunny",
                  "detailed_forecast": "Mostly sunny, with a high near 71. South wind around 17 mph."
              },
              {
                  "id": 4,
                  "day": "Saturday Night",
                  "start_time": "2022-11-05T18:00:00-04:00",
                  "end_time": "2022-11-06T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 62,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "16 to 24 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/night/wind_bkn/rain_showers,30?size=medium",
                  "short_forecast": "Mostly Cloudy then Chance Rain Showers",
                  "detailed_forecast": "A chance of rain showers after 2am. Mostly cloudy, with a low around 62. South wind 16 to 24 mph, with gusts as high as 35 mph. Chance of precipitation is 30%."
              },
              {
                  "id": 5,
                  "day": "Sunday",
                  "start_time": "2022-11-06T06:00:00-05:00",
                  "end_time": "2022-11-06T18:00:00-05:00",
                  "day_time": true,
                  "temperature": 66,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "13 to 21 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/day/rain_showers,50/rain_showers,40?size=medium",
                  "short_forecast": "Chance Rain Showers",
                  "detailed_forecast": "A chance of rain showers. Cloudy, with a high near 66. South wind 13 to 21 mph. Chance of precipitation is 50%. New rainfall amounts less than a tenth of an inch possible."
              },
              {
                  "id": 6,
                  "day": "Sunday Night",
                  "start_time": "2022-11-06T18:00:00-05:00",
                  "end_time": "2022-11-07T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 58,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "9 to 13 mph",
                  "wind_direction": "SW",
                  "icon": "https://api.weather.gov/icons/land/night/rain_showers,40/rain_showers,30?size=medium",
                  "short_forecast": "Chance Rain Showers",
                  "detailed_forecast": "A chance of rain showers before 1am. Mostly cloudy, with a low around 58. Southwest wind 9 to 13 mph. Chance of precipitation is 40%. New rainfall amounts less than a tenth of an inch possible."
              },
              {
                  "id": 7,
                  "day": "Monday",
                  "start_time": "2022-11-07T06:00:00-05:00",
                  "end_time": "2022-11-07T18:00:00-05:00",
                  "day_time": true,
                  "temperature": 63,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "9 to 14 mph",
                  "wind_direction": "W",
                  "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                  "short_forecast": "Sunny",
                  "detailed_forecast": "Sunny, with a high near 63. West wind 9 to 14 mph."
              },
              {
                  "id": 8,
                  "day": "Monday Night",
                  "start_time": "2022-11-07T18:00:00-05:00",
                  "end_time": "2022-11-08T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 42,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "16 mph",
                  "wind_direction": "NW",
                  "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                  "short_forecast": "Mostly Clear",
                  "detailed_forecast": "Mostly clear, with a low around 42. Northwest wind around 16 mph."
              },
              {
                  "id": 9,
                  "day": "Tuesday",
                  "start_time": "2022-11-08T06:00:00-05:00",
                  "end_time": "2022-11-08T18:00:00-05:00",
                  "day_time": true,
                  "temperature": 47,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "13 to 17 mph",
                  "wind_direction": "NW",
                  "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                  "short_forecast": "Sunny",
                  "detailed_forecast": "Sunny, with a high near 47. Northwest wind 13 to 17 mph."
              },
              {
                  "id": 10,
                  "day": "Tuesday Night",
                  "start_time": "2022-11-08T18:00:00-05:00",
                  "end_time": "2022-11-09T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 35,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "6 to 12 mph",
                  "wind_direction": "NE",
                  "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                  "short_forecast": "Mostly Clear",
                  "detailed_forecast": "Mostly clear, with a low around 35. Northeast wind 6 to 12 mph."
              },
              {
                  "id": 11,
                  "day": "Wednesday",
                  "start_time": "2022-11-09T06:00:00-05:00",
                  "end_time": "2022-11-09T18:00:00-05:00",
                  "day_time": true,
                  "temperature": 51,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "5 to 13 mph",
                  "wind_direction": "SE",
                  "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                  "short_forecast": "Sunny",
                  "detailed_forecast": "Sunny, with a high near 51. Southeast wind 5 to 13 mph."
              },
              {
                  "id": 12,
                  "day": "Wednesday Night",
                  "start_time": "2022-11-09T18:00:00-05:00",
                  "end_time": "2022-11-10T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 42,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "12 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                  "short_forecast": "Partly Cloudy",
                  "detailed_forecast": "Partly cloudy, with a low around 42. South wind around 12 mph."
              },
              {
                  "id": 13,
                  "day": "Thursday",
                  "start_time": "2022-11-10T06:00:00-05:00",
                  "end_time": "2022-11-10T18:00:00-05:00",
                  "day_time": true,
                  "temperature": 55,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "10 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                  "short_forecast": "Mostly Sunny",
                  "detailed_forecast": "Mostly sunny, with a high near 55. South wind around 10 mph."
              },
              {
                  "id": 14,
                  "day": "Thursday Night",
                  "start_time": "2022-11-10T18:00:00-05:00",
                  "end_time": "2022-11-11T06:00:00-05:00",
                  "day_time": false,
                  "temperature": 46,
                  "temperature_unit": "F",
                  "temperature_trend": nil,
                  "wind_speed": "7 to 10 mph",
                  "wind_direction": "S",
                  "icon": "https://api.weather.gov/icons/land/night/rain_showers?size=medium",
                  "short_forecast": "Slight Chance Rain Showers",
                  "detailed_forecast": "A slight chance of rain showers after 7pm. Mostly cloudy, with a low around 46. South wind 7 to 10 mph."
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
end
