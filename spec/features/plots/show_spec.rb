# When I visit a plot's show page ('/gardens/:garden_id/plots/:plot_id')
# I see a list of all the plants in that plot.
# Under each plant I see a quantity planted and a date planted.
# When I click on a link I am taken to a plant show page 'plants/:id' to get information about the plant.
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
      plot_plant = PlotFacade.get_plot_plants(garden.id, plot.id)

      visit garden_plot_path(garden.id, plot.id)
    end
  end
end