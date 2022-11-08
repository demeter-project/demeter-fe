require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'The plot show page', :vcr do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Login with Google"

    stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
    .to_return(status: 200, body: garden_show.to_json)
    @garden = GardenFacade.get_garden(1)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/1")
    .to_return(status: 200, body: plot_show.to_json)
    @plot = PlotFacade.get_plot(@garden.id, 1)
    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants")
    .to_return(status: 200, body: plot_plant_index.to_json)
    @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
    stub_request(:get, "#{@api_uri}/api/v1/plants?state_code=#{@garden.state_code}&zip_code=#{@garden.zip_code}")
    .to_return(status: 200, body: plants_index.to_json)
  end

  describe 'When I visit a plot show page' do
    it 'displays a list of all plants in that plot/quantity planted/date planted as links to plant show page', :vcr do
      visit garden_plot_path(@garden.id, @plot.id)

      @plot_plants.each do |plant|
        expect(page).to have_content(plant.quantity) if !plant.quantity.nil?
        expect(page).to have_content(plant.date_planted) if !plant.date_planted.nil?
      end

      plant = PlantFacade.get_plant(@plot_plants.first.plant_id)

      click_link plant.common_name.titleize
      expect(current_path).to eq(plant_path(869))
    end

    it 'displays a button to plant a new plant in the plot' do
      visit garden_plot_path(@garden.id, @plot.id)

      expect(page).to have_button("Plant a new plant in #{@plot.name}")

      click_button "Plant a new plant in #{@plot.name}"
      expect(current_path).to eq(discover_plants_path(@garden.id, @plot.id))
    end
  

    describe "On each plant tile I see a button to 'Remove Plant'" do
      it 'Confirms deletion of the plant and reloads the page and I no longer see the plant' do
        visit garden_plot_path(@garden.id, @plot.id)

        plant = @plot_plants.first
        stub_request(:delete, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants/#{plant.id}")

        within("#plant-#{plant.id}") do
          click_button "Remove Plant"
        end
        
        stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants")
        .to_return(status: 200, body: plot_plant_index_after_delete.to_json)

        expect(current_path).to eq(garden_plot_path(@garden.id, @plot.id))
        expect(page).to_not have_link(plant.plant_name)
      end
    end

    describe "I see a form in each plant tile, with a quantity field/date planted field/'plant it' button" do
      it 'When I fill in the form and click plant it, I no longer see the form in that tile and date planted/quantity are displayed' do
        visit garden_plot_path(@garden.id, @plot.id)

        plant = @plot_plants.first

        within("#plant-#{plant.id}") do
          expect(plant.quantity).to eq(nil)
          expect(plant.date_planted).to eq(nil)

          expect(page).to have_select("Quantity")
          expect(page).to have_field("Date planted")

          stub_request(:patch, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants/#{plant.id}")
          .to_return(status: 200, body: plot_plants_update_request.to_json)
          
          stub_request(:get, "#{@api_uri}/api/v1/gardens/#{@garden.id}/plots/#{@plot.id}/plot_plants")
          .to_return(status: 200, body: updated_plot_plant.to_json)

          select 2, from: "Quantity"
          click_on "Plant it"
        end

        expect(current_path).to eq(garden_plot_path(@garden.id, @plot.id))

        within("#plant-#{plant.id}") do
          expect(page).to have_content("Quantity: 2")
          expect(page).to have_content("Date planted: 2022-11-07")
        end
      end
    end
  end
end
