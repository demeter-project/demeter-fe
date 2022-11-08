require 'rails_helper'

RSpec.describe PlantService do 
  describe 'has plant backend endpoints', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(PlantService.new).to be_a(PlantService)
    end

    it 'get plant endpoint' do
      response = PlantService.get_plant_endpoint(692)

      require 'pry'; binding.pry
    end
  end
end