require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'plants#index', :vcr do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end
  
  it 'displays a list of plants native to the gardens state' do
    stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
        .to_return(body: garden_show.to_json)

    garden = GardenFacade.get_garden(1)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{garden.id}/plots")
      .to_return(body: plot_index.to_json)

    plots = GardenFacade.get_garden_plots(garden.id)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{garden.id}/plots/#{plot.id}")
      .to_return(body: plot_show.to_json)

    plot = PlotFacade.get_plot(garden.id, plot.id)

    stub_request(:get, "#{@api_uri}/plants?zip_code=#{garden.zip_code}&state_code=#{garden.state_code}")
      .to_return(body: plants_index.to_json)

    plants = PlantsFacade.get_plants(zip_code: garden.zip_code, state_code: garden.state_code)


    
    
    

  end
end