require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'plants#index' do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
    stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
        .to_return(body: garden_show.to_json)
    @garden = GardenFacade.get_garden(1)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots")
      .to_return(body: plot_index.to_json)
    @plots = GardenFacade.get_garden_plots(@garden.id)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plots.first.id}")
      .to_return(body: plot_show.to_json)
    @plot = PlotFacade.get_plot(@garden.id, @plots.first.id)
    stub_request(:get, "#{@api_uri}/api/v1/plants?state_code=#{@garden.state_code}&zip_code=#{@garden.zip_code}")
      .to_return(body: plants_index.to_json)
    @plants = PlantFacade.get_plants(state_code: @garden.state_code, zip_code: @garden.zip_code)
    visit "/gardens/#{@garden.id}/plots/#{@plot.id}/plants/discover?state_code=#{@garden.state_code}&zip_code=#{@garden.zip_code}"
  end
  
  it 'displays a list of plants native to the gardens state' do
    expect(page).to have_button "Add Selected Plants to Plot"

    @plants.each do |plant|
      within("#plant-#{plant.id}") do
        expect(page).to have_content(plant.common_name.titleize)
        expect(page).to have_content(plant.scientific_name.titleize)
        expect(page).to have_content(plant.suitable_for_hz)
      end
    end
  end
    
  it 'can add plants to the plot' do
    selected_plants = @plants.first(3)
    
    selected_plants.each do |plant|
      within("#plant-#{plant.id}") do
        check "plant_ids[]"
      end
    end
    
    plant_ids = selected_plants.map { |plant| plant.id }.join(',')
    body = { plant_ids: plant_ids }
    stub_request(:patch, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}")
      .with(body: body.to_json)
      .to_return(body: plot_plant_create.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants")
      .to_return(body: new_plot_plants.to_json)
    click_on "Add Selected Plants to Plot"

    expect(current_path).to eq(garden_plot_path(@garden.id, @plot.id))

    selected_plants.each do |plant|
      expect(page).to have_content(plant.common_name.titleize)
    end
  end
end