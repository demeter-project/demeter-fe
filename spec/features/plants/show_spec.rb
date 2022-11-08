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
   
      expect(page).to have_content("OECA10")
      expect(page).to have_content("Oenothera Caespitosa")
      expect(page).to have_content("AZ CA CO ID MT ND NE NM NV OR SD TX UT WA WY")
      expect(page).to have_content("White")
      expect(page).to have_content("High")
      expect(page).to have_content("Medium")
      expect(page).to have_content("Low")
      expect(page).to have_content("Perennial")
      expect(page).to have_content("Rapid")
      expect(page).to have_content("Medium")
      expect(page).to have_content("Intolerant")
      expect(page).to have_content(false)
      expect(page).to have_content("6.5")
      expect(page).to have_content("8.0")
      expect(page).to have_content(-13)
      expect(page).to have_content(140)
      expect(page).to have_content(7)
      expect(page).to have_content(69)
    end
  end
end