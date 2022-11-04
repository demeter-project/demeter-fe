require 'rails_helper'

RSpec.describe DatabaseService, type: :service do 
  describe 'send and receives request from backend api', vcr: { record: :new_episodes } do
    it 'instantiates' do
      expect(DatabaseService.new).to be_a(DatabaseService)
    end

    it 'has get plantby :id endpoint' do
      response = DatabaseService.get_plant_endpoint(1)

      expect(response[:data][:id].to_i).to eq(1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
      expect(response[:data][:id]).to be_a(String)
      expect(response[:data][:type]).to be_a(String)
      expect(response[:data][:attributes]).to be_a(Hash)
      expect(response[:data][:attributes][:usda_symbol]).to be_a(String)
      expect(response[:data][:attributes][:scientific_name]).to be_a(String)
      expect(response[:data][:attributes][:common_name]).to be_a(String)
      expect(response[:data][:attributes][:states]).to be_a(String)
      expect(response[:data][:attributes][:flower_color]).to be_a(String)
      expect(response[:data][:attributes][:drought_tolerance]).to be_a(String)
      expect(response[:data][:attributes][:fire_tolerance]).to be_a(String)
      expect(response[:data][:attributes][:moisture_use]).to be_a(String)
      expect(response[:data][:attributes][:toxicity]).to be_a(String)
      expect(response[:data][:attributes][:duration]).to be_a(String)
      expect(response[:data][:attributes][:growth_rate]).to be_a(String)
      expect(response[:data][:attributes][:salinity_tolerance]).to be_a(String)
      expect(response[:data][:attributes][:shade_tolerance]).to be_a(String)
      expect(response[:data][:attributes][:edible]).to be_a(String)
      expect(response[:data][:attributes][:ph_minimum]).to be_a(String)
      expect(response[:data][:attributes][:ph_maximum]).to be_a(String)
      expect(response[:data][:attributes][:temperature_min]).to be_a(Integer)
      expect(response[:data][:attributes][:frost_free_days_min]).to be_a(Integer)
      expect(response[:data][:attributes][:precipitation_min]).to be_a(Integer)
      expect(response[:data][:attributes][:precipitation_max]).to be_a(Integer)
    end

    xit 'has get garden by :id endpoint' do
      response = DatabaseService.get_garden_endpoint(1)

      expect(response[:data][:id].to_i).to eq(1)
      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
      expect(response[:data][:id]).to be_a(String)
      expect(response[:data][:name]).to be_a(String)
      expect(response[:data][:zip_code]).to be_a(Integer)
      expect(response[:data][:weather_forecast]).to be_a(Array)
      expect(response[:data][:weather_forecast][0][:name]).to be_a(String)
      expect(response[:data][:weather_forecast][0][:isDaytime]).to be_in([true, false])
      expect(response[:data][:weather_forecast][0][:temperature]).to be_a(Integer)
    end

    xit 'has get garden plots by :id endpoint' do
      response = DatabaseService.get_garden_plots_endpoint(1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
      expect(response[:data][0][:id]).to be_a(String)
      expect(response[:data][0][:type]).to be_a(String)
      expect(response[:data][0][:attributes]).to be_a(Hash)
      expect(response[:data][0][:attributes][:name]).to be_a(String)
    end

    xit 'has get plot endpoint by garden :id, plot :id' do
      response = DatabaseService.get_plot_endpoint(1, 1)

      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Hash)
      expect(response[:data][:id]).to be_a(String)
      expect(response[:data][:type]).to be_a(String)
      expect(response[:data][:attributes]).to be_a(Hash)
      expect(response[:data][:attributes][:name]).to be_a(String)
      expect(response[:data][:attributes][:soil_ph_min]).to be_a(Float)
      expect(response[:data][:attributes][:soil_ph_min]).to be_a(Float)
      expect(response[:data][:attributes][:shade_tolerant]).to be_in([true, false])
    end
  end
end