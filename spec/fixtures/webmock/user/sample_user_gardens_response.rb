module SampleUserGardensResponse
  def user_gardens
    {
        "data": [
            {
                "id": "1",
                "type": "garden",
                "attributes": {
                    "name": "Sunflower Patch",
                    "zip_code": "94952",
                    "state_code": "CA",
                    "user_id": 1,
                    "weather_forecast": nil
                },
                "relationships": {
                    "plots": {
                        "data": []
                    }
                }
            },
            {
                "id": "2",
                "type": "garden",
                "attributes": {
                    "name": "tomato patch",
                    "zip_code": "94952",
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
        ]
    }
  end

  def user_gardens_no_results
    {
    "data": []
    }
  end

end
