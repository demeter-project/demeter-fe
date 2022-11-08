require 'rails_helper'

RSpec.describe PlotService do 
  describe 'has plot backend endpoints', vcr: { record: :new_episodes} do 
    it 'instantiates' do
      expect(PlotService.new).to be_a(PlotService)
    end

    it 'get plot endpoint' do
      response = PlotService.get_plot_endpoint(5, 1)

      require 'pry'; binding.pry
    end
  end
end