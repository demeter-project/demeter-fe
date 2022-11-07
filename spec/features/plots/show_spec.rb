require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'The plot show page' do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"

    stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
    .to_return(status: 200, body: garden_show.to_json)
    @garden = GardenFacade.get_garden(1)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1")
    .to_return(status: 200, body: plot_show.to_json)
    @plot = PlotFacade.get_plot(@garden.id, 1)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1/plot_plants")
    .to_return(status: 200, body: plot_plant_index.to_json)
    @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
    stub_request(:get, "#{@api_uri}/api/v1/plants?state_code=#{@garden.state_code}&zip_code=#{@garden.zip_code}")
    .to_return(status: 200, body: plants_index.to_json)
  end

  describe 'When I visit a plot show page' do
    it 'displays a list of all plants in that plot/quantity planted/date planted as links to plant show page' do
      visit garden_plot_path(@garden.id, @plot.id)

      @plot_plants.each do |plant|
        expect(page).to have_content(plant.quantity) if !plant.quantity.nil?
        expect(page).to have_content(plant.date_planted) if !plant.date_planted.nil?
      end

      plant = @plot_plants.first
      within("#plant-#{plant.id}") do
        click_link plant.plant_name.titleize
        expect(current_path).to eq(plant_path(plant.id))
      end
    end

    it 'displays a button to plant a new plant in the plot' do
      visit garden_plot_path(@garden.id, @plot.id)

      expect(page).to have_button("Plant a new plant in #{@plot.name}")

      click_button "Plant a new plant in #{@plot.name}"
      expect(current_path).to eq(discover_plants_path(@garden.id, @plot.id))
    end
  end

  describe "On each plant tile I see a button to 'Remove Plant'" do
    it 'Confirms deletion of the plant and reloads the page and I no longer see the plant' do
      garden = GardenFacade.get_garden(1)
      plot = PlotFacade.get_plot(garden.id, 7)
      plot_plants = PlotFacade.get_plot_plants(garden.id, plot.id)

      visit garden_plot_path(garden.id, plot.id)

      stub_request(:delete, "#{@api_uri}/api/v1/gardens/1/plots/7/plot_plants/10")
      .to_return(status: 204, body: plot_plant_delete.to_json)

      plant = plot_plants.first
      within("#plant-#{plant.id}") do
        # save_and_open_page
        click_button "Remove Plant"
        accept_alert do
          click_link('Show Alert')
        end
      end

      expect(current_path).to eq(garden_plot_path(garden.id, plot.id))
      expect(page).to_not have_link(plant.name)
    end
  end


end
# When I visit a plot show page, on each plant tile I see a button to "Remove Plant".
# When I click the button, I am prompted with a confirmation that I would like to delete the plant. 
# If I confirm, the page reloads and I no longer see the plant.

# The button to remove the plant is there regardless of whether the plant has been "planted" or not.
# "http://localhost:3000/api/v1/gardens/1/plots/7/plot_plants"