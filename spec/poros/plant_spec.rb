require 'rails_helper'

RSpec.describe Plant do 
  describe 'instantiates with parsed api json plant data' do
    before :each do
      @mock_json_data = {
        "data": {
            "id": "192",
            "type": "plant",
            "attributes": {
                "usda_symbol": "BRKA2",
                "scientific_name": "Bromus kalmii",
                "common_name": "arctic brome",
                "states": "CT DC IA IL IN MA MD ME MI MN ND NH NJ NY OH PA SD VA VT WI WV",
                "flower_color": "Yellow",
                "drought_tolerance": "Medium",
                "fire_tolerance": "High",
                "moisture_use": "Low",
                "toxicity": "None",
                "duration": "Perennial",
                "growth_rate": "Rapid",
                "salinity_tolerance": "None",
                "shade_tolerance": "Tolerant",
                "edible": "f",
                "ph_minimum": "5.7",
                "ph_maximum": "7.0",
                "temperature_min": -33,
                "frost_free_days_min": 85,
                "precipitation_min": 32,
                "precipitation_max": 55,
                "suitable_for_hz": nil
            }
        }
    }
    end
    it 'instantiates' do
      expect(Plant.new(@mock_json_data[:data])).to be_a(Plant)
    end

    it 'has expected data types' do
      response = Plant.new(@mock_json_data[:data])
      
      expect(response.id).to be_a(String)
      expect(response.common_name).to be_a(String)
      expect(response.temperature_min).to be_a(Integer)
      expect(response.precipitation_max).to be_a(Integer)
      expect(response.suitable_for_hz).to eq(nil)
    end
  end
end