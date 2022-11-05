# When I visit a plot's show page ('/gardens/:garden_id/plots/:plot_id')
# I see a list of all the plants in that plot.
# Under each plant I see a quantity planted and a date planted.
# When I click on a link I am taken to a plant show page 'plants/:id' to get information about the plant.
require 'rails_helper'

RSpec.describe 'The plot show page' do
  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'When I visit a plot show page' do
    it 'displays a list of all plants in that plot/quantity planted/date planted as links to plant show page' do
      json_response = File.read('spec/fixtures/plot_show.json')
      stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1/plot_plants")
      .to_return(status: 200, body: json_response)
      require 'pry' ; binding.pry
      plot = PlotFacade.get_plot_plants('1', '1')
      visit plot_path(plot)
    end
  end
end