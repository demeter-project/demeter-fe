require 'rails_helper'

RSpec.describe PlantService do 
  describe 'has plant backend endpoints', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(PlantService.new).to be_a(PlantService)
    end

    it 'get plant endpoint' do
      response = PlantService.get_plant_endpoint(692)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
    end

    it 'search query get plants endpoint' do
      search_params = { state_code: "CA", zip_code: "98119", search_name: "primrose" }

      response = PlantService.get_plants_endpoint(search_params)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
      response[:data].each do |plant|
        expect(plant[:attributes][:common_name]).to include("primrose")
        expect(plant[:attributes][:states]).to include("CA")
      end
    end
  end
end