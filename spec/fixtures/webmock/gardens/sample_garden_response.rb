module SampleGardenResponse

  def garden_response
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
                    "id": 1,
                    "day": "Today",
                    "start_time": "2022-11-07T09:00:00-07:00",
                    "end_time": "2022-11-07T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 62,
                    "temperature_unit": "F",
                    "temperature_trend": "falling",
                    "wind_speed": "8 to 13 mph",
                    "wind_direction": "SW",
                    "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                    "short_forecast": "Sunny",
                    "detailed_forecast": "Sunny. High near 62, with temperatures falling to around 51 in the afternoon. Southwest wind 8 to 13 mph, with gusts as high as 17 mph."
                },
                {
                    "id": 2,
                    "day": "Tonight",
                    "start_time": "2022-11-07T18:00:00-07:00",
                    "end_time": "2022-11-08T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 38,
                    "temperature_unit": "F",
                    "temperature_trend": "rising",
                    "wind_speed": "10 mph",
                    "wind_direction": "SSW",
                    "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                    "short_forecast": "Mostly Cloudy",
                    "detailed_forecast": "Mostly cloudy. Low around 38, with temperatures rising to around 43 overnight. South southwest wind around 10 mph."
                },
                {
                    "id": 3,
                    "day": "Tuesday",
                    "start_time": "2022-11-08T06:00:00-07:00",
                    "end_time": "2022-11-08T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 69,
                    "temperature_unit": "F",
                    "temperature_trend": "falling",
                    "wind_speed": "12 mph",
                    "wind_direction": "S",
                    "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                    "short_forecast": "Sunny",
                    "detailed_forecast": "Sunny. High near 69, with temperatures falling to around 62 in the afternoon. South wind around 12 mph, with gusts as high as 22 mph."
                },
                {
                    "id": 4,
                    "day": "Tuesday Night",
                    "start_time": "2022-11-08T18:00:00-07:00",
                    "end_time": "2022-11-09T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 38,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "9 mph",
                    "wind_direction": "SSW",
                    "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                    "short_forecast": "Mostly Clear",
                    "detailed_forecast": "Mostly clear, with a low around 38. South southwest wind around 9 mph."
                },
                {
                    "id": 5,
                    "day": "Wednesday",
                    "start_time": "2022-11-09T06:00:00-07:00",
                    "end_time": "2022-11-09T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 68,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "8 to 13 mph",
                    "wind_direction": "SSW",
                    "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                    "short_forecast": "Sunny",
                    "detailed_forecast": "Sunny, with a high near 68. South southwest wind 8 to 13 mph, with gusts as high as 23 mph."
                },
                {
                    "id": 6,
                    "day": "Wednesday Night",
                    "start_time": "2022-11-09T18:00:00-07:00",
                    "end_time": "2022-11-10T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 33,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "12 mph",
                    "wind_direction": "SW",
                    "icon": "https://api.weather.gov/icons/land/night/rain_showers,20/snow,30?size=medium",
                    "short_forecast": "Slight Chance Rain Showers then Chance Rain And Snow Showers",
                    "detailed_forecast": "A slight chance of rain showers between 11pm and 2am, then a chance of rain and snow showers. Mostly clear, with a low around 33. Chance of precipitation is 30%. New snow accumulation of less than half an inch possible."
                },
                {
                    "id": 7,
                    "day": "Thursday",
                    "start_time": "2022-11-10T06:00:00-07:00",
                    "end_time": "2022-11-10T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 44,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "10 to 14 mph",
                    "wind_direction": "NW",
                    "icon": "https://api.weather.gov/icons/land/day/snow,30/snow,20?size=medium",
                    "short_forecast": "Chance Snow Showers",
                    "detailed_forecast": "A chance of snow showers. Mostly sunny, with a high near 44. Chance of precipitation is 30%. New snow accumulation of less than half an inch possible."
                },
                {
                    "id": 8,
                    "day": "Thursday Night",
                    "start_time": "2022-11-10T18:00:00-07:00",
                    "end_time": "2022-11-11T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 21,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "6 to 12 mph",
                    "wind_direction": "SW",
                    "icon": "https://api.weather.gov/icons/land/night/snow/sct?size=medium",
                    "short_forecast": "Slight Chance Snow Showers then Partly Cloudy",
                    "detailed_forecast": "A slight chance of snow showers before 11pm. Partly cloudy, with a low around 21."
                },
                {
                    "id": 9,
                    "day": "Veterans Day",
                    "start_time": "2022-11-11T06:00:00-07:00",
                    "end_time": "2022-11-11T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 45,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "8 mph",
                    "wind_direction": "ESE",
                    "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                    "short_forecast": "Sunny",
                    "detailed_forecast": "Sunny, with a high near 45."
                },
                {
                    "id": 10,
                    "day": "Friday Night",
                    "start_time": "2022-11-11T18:00:00-07:00",
                    "end_time": "2022-11-12T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 20,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "6 mph",
                    "wind_direction": "SW",
                    "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                    "short_forecast": "Mostly Clear",
                    "detailed_forecast": "Mostly clear, with a low around 20."
                },
                {
                    "id": 11,
                    "day": "Saturday",
                    "start_time": "2022-11-12T06:00:00-07:00",
                    "end_time": "2022-11-12T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 45,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "7 mph",
                    "wind_direction": "NNE",
                    "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                    "short_forecast": "Sunny",
                    "detailed_forecast": "Sunny, with a high near 45."
                },
                {
                    "id": 12,
                    "day": "Saturday Night",
                    "start_time": "2022-11-12T18:00:00-07:00",
                    "end_time": "2022-11-13T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 22,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "6 mph",
                    "wind_direction": "W",
                    "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                    "short_forecast": "Partly Cloudy",
                    "detailed_forecast": "Partly cloudy, with a low around 22."
                },
                {
                    "id": 13,
                    "day": "Sunday",
                    "start_time": "2022-11-13T06:00:00-07:00",
                    "end_time": "2022-11-13T18:00:00-07:00",
                    "day_time": true,
                    "temperature": 46,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "7 mph",
                    "wind_direction": "NW",
                    "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                    "short_forecast": "Mostly Sunny",
                    "detailed_forecast": "Mostly sunny, with a high near 46."
                },
                {
                    "id": 14,
                    "day": "Sunday Night",
                    "start_time": "2022-11-13T18:00:00-07:00",
                    "end_time": "2022-11-14T06:00:00-07:00",
                    "day_time": false,
                    "temperature": 24,
                    "temperature_unit": "F",
                    "temperature_trend": nil,
                    "wind_speed": "6 mph",
                    "wind_direction": "SW",
                    "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                    "short_forecast": "Partly Cloudy",
                    "detailed_forecast": "Partly cloudy, with a low around 24."
                }
            ]
        },
        "relationships": {
            "plots": {
                "data": [
                    {
                        "id": "3",
                        "type": "plot"
                    },
                    {
                        "id": "4",
                        "type": "plot"
                    }
                ]
            }
        }
      }
    }
  end

  def garden_plots_response 
    {
      "data": [
          {
              "id": "3",
              "type": "plot",
              "attributes": {
                  "name": "Foxtails",
                  "soil_ph_min": "5.8",
                  "soil_ph_max": "8.0",
                  "shade_tolerant?": false,
                  "contains_toxic?": false
              },
              "relationships": {
                  "plants": {
                      "data": [
                          {
                              "id": "57",
                              "type": "plant"
                          },
                          {
                              "id": "58",
                              "type": "plant"
                          },
                          {
                              "id": "66",
                              "type": "plant"
                          }
                      ]
                  }
              }
          },
          {
              "id": "4",
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
      ]
  }
  end
end