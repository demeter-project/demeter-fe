require 'rails_helper'

RSpec.describe DatabaseService, type: :service, do 
  describe 'send and receives request from backend api' do
    it 'instantiates' do
      expect(DatabaseService.new).to be_a(DatabaseService)
    end

    it 'has get one plant endpoint' do
      json_response = File.read('spec/fixtures/services/get_garden_stub.json')
      stub_request(:get, "https://demeter-be.herokuapp.com/api/v1/gardens/1").
      to_return(status: 200, body: json_response)
      require 'pry'; binding.pry

    end
  end
end