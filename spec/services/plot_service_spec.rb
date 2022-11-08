require 'rails_helper'

RSpec.describe PlotService do 
  describe 'has plot backend endpoints', vcr: { record: :new_episodes} do 
    it 'instantiates' do
      expect(PlotService.new).to be_a(PlotService)
    end

    it 'get plot endpoint' do
      response = PlotService.get_plot_endpoint(5, 1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
    end

    it 'get plot plants endpoint' do
      response = PlotService.get_plot_plants_endpoint(5, 1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
    end

    it 'create plot for garden endpoint' do
      plot_params = { name: "FE Test Plot" }

      response = PlotService.create_plot_for_garden_endpoint(1, plot_params)

      expect(response.status).to eq(201)
      expect(response.reason_phrase).to eq("Created")
    end

    it 'delete plot from garden endpoint' do
      response = PlotService.delete_garden_plot_endpoint(5, 5)

      expect(response.status).to eq(204)
      expect(response.reason_phrase).to eq("No Content")
    end
  end
end