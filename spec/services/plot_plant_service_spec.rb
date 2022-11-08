require 'rails_helper'

RSpec.describe PlotPlantService do 
  describe 'has plot plant backend endpoints', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(PlotPlantService.new).to be_a(PlotPlantService)
    end

    it 'create plot plant endpoint' do
      plant_ids = [57, 58, 66]

      response = PlotPlantService.create_plot_plant_endpoint(5, 1, plant_ids)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
    end

    it 'update plot plant' do
      date_planted = "1999/11/07"
      quantity = 10

      response = PlotPlantService.update_plot_plant(5, 1, 2, date_planted, quantity)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
      expect(response[:data][:attributes][:quantity]).to eq(quantity)
      expect(response[:data][:attributes][:date_planted]).to eq(date_planted)
    end

    it 'delete plot plant endpoint' do
      response = PlotPlantService.delete_plot_plant_endpoint(5, 1, 9)

      expect(response.status).to eq(204)
      expect(response.reason_phrase).to eq("No Content")

      response = PlotPlantService.delete_plot_plant_endpoint(5, 1, 10)

      expect(response.status).to eq(204)
      expect(response.reason_phrase).to eq("No Content")

      response = PlotPlantService.delete_plot_plant_endpoint(5, 1, 11)

      expect(response.status).to eq(204)
      expect(response.reason_phrase).to eq("No Content")
    end
  end
end