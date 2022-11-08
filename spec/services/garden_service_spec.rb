require 'rails_helper'

RSpec.describe GardenService do
  describe 'has garden backend endpoints', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(GardenService.new).to be_a(GardenService)
    end

    it 'get garden endpoint' do
      response = GardenService.get_garden_endpoint(5)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
    end

    it 'get garden plots endpoint' do
      response = GardenService.get_garden_plots_endpoint(5)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
    end

    it 'get user gardens endpoint' do
      response = GardenService.get_user_gardens_endpoint(1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
    end

    it 'create garden endpoints' do
      garden_params = { name: "FE Test Garden", zip_code: "98119", state_code: "WA", user_id: 1 }

      response = GardenService.create_garden_endpoint(garden_params)

      expect(response).to be_a(Hash)
      expect(response[:data][:type]).to eq("garden")
      expect(response[:data][:attributes][:name]).to eq(garden_params[:name])
      expect(response[:data][:attributes][:zip_code]).to eq(garden_params[:zip_code])
      expect(response[:data][:attributes][:state_code]).to eq(garden_params[:state_code])
    end

    it 'has delete garden endpoint' do
      garden_params = { name: "FE Test Delete Garden", zip_code: "93013", state_code: "CA", user_id: 1 }

      garden = GardenService.create_garden_endpoint(garden_params)

      response = GardenService.delete_garden_endpoint(garden[:data][:id])

      expect(response.status).to eq(204)
      expect(response.reason_phrase).to eq("No Content")
    end
  end
end