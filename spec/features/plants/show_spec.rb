require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'The plant show page' do
  include SampleResponses

  describe 'When I visit the plant show page' do
    it 'lists all attributes for a plant' do
      stub_request(:get, "#{@api_base}/api/v1/plants/692")
      .to_return(body: plant_show.to_json)

      plant = PlantService.get_plant_endpoint(692)
      visit plant_path(692)
   
      expect(page).to have_content("usda_symbol": "OECA10")
      expect(page).to have_content("scientific_name": "Oenothera caespitosa")
      expect(page).to have_content("states": "AZ CA CO ID MT ND NE NM NV OR SD TX UT WA WY")
      expect(page).to have_content("flower_color": "White")
      expect(page).to have_content("drought_tolerance": "High")
      expect(page).to have_content("fire_tolerance": "Medium")
      expect(page).to have_content("moisture_use": "Low")
      expect(page).to have_content("duration": "Perennial")
      expect(page).to have_content("growth_rate": "Rapid")
      expect(page).to have_content("salinity_tolerance": "Medium")
      expect(page).to have_content("shade_tolerance": "Intolerant")
      expect(page).to have_content("edible": false)
      expect(page).to have_content("ph_minimum": "6.5")
      expect(page).to have_content("ph_maximum": "8.0")
      expect(page).to have_content("temperature_min": -13)
      expect(page).to have_content("frost_free_days_min": 140)
      expect(page).to have_content("precipitation_min": 7)
      expect(page).to have_content("precipitation_max": 69)
    end
  end
end