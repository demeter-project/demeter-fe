require 'rails_helper'

RSpec.describe PlotPlantService do 
  describe 'has plot plant backend endpoints', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(PlotPlantService.new).to be_a(PlotPlantService)
    end

    it 'create plot plant endpoint' do
      plant_ids = [57, 58, 66]

      response = PlotPlantService.create_plot_plant_endpoint(5, 1, plant_ids)

      require 'pry'; binding.pry
    end
  end
end