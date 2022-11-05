require 'rails_helper'
require './spec/fixtures/webmock/sample_responses'

RSpec.describe 'The plot show page' do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'When I visit a plot show page' do
    it 'displays a list of all plants in that plot/quantity planted/date planted as links to plant show page' do
      stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
      .to_return(status: 200, body: garden_show.to_json)

      stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1")
      .to_return(status: 200, body: plot_show.to_json)

      stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1/plot_plants")
      .to_return(status: 200, body: plot_plant_index.to_json)

      garden = GardenFacade.get_garden(1)
      plot = PlotFacade.get_plot(garden.id, 1)
      plot_plants = PlotFacade.get_plot_plants(garden.id, plot.id)

      visit garden_plot_path(garden.id, plot.id)

      plot_plants.each do |plant|
        expect(page).to have_content(plant.quantity)
        expect(page).to have_content(plant.date_planted)
      end

      plant = plot_plants.first
      within("#plant-#{plant.id}") do
        click_link plant.plant_name
        expect(current_path).to eq(plant_path(plant.id))
      end
    end
  end
end