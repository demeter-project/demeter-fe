require 'rails_helper'

RSpec.describe DatabaseService, type: :service do 
  describe 'send and receives request from backend api', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(DatabaseService.new).to be_a(DatabaseService)
    end

    it 'has get one plant endpoint' do
      response = DatabaseService.get_plant_endpoint(1)
      
      expect(response)
    end
  end
end