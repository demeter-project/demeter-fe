require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'plants#index', :vcr do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Login with Google"
    @garden = GardenFacade.get_garden(1)
    @plots = GardenFacade.get_garden_plots(@garden.id)
    @plot = PlotFacade.get_plot(@garden.id, @plots.first.id)
    @plants = PlantFacade.get_plants(state_code: @garden.state_code, zip_code: @garden.zip_code)
    visit "/gardens/#{@garden.id}/plots/#{@plot.id}/plants/discover"
  end
  
  it 'displays a list of plants native to the gardens state' do
    expect(page).to have_button "Add Selected Plants to #{@plot.name}"

    @plants.each do |plant|
      within("#plant-#{plant.id}") do
        expect(page).to have_content(plant.common_name.titleize)
        expect(page).to have_content(plant.scientific_name.titleize)
        expect(page).to have_content(plant.suitable_for_hz)
        expect(page).to have_content(plant.ph_maximum)
        expect(page).to have_content(plant.ph_minimum)
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
    
    plant_ids = selected_plants.map { |plant| plant.id }
    body = { plant_ids: plant_ids }

    click_on "Add Selected Plants to #{@plot.name}"

    expect(current_path).to eq(garden_plot_path(@garden.id, @plot.id))

    selected_plants.each do |plant|
      expect(page).to have_content(plant.common_name.titleize)
    end
  end

  it 'has a text field and a button to search plants by name' do
    expect(page).to have_field :search_name
  end

  describe 'when I fill out the search form and click submit' do
    it 'updates the table to reflect query' do
      query = 'acer'

      fill_in :search_name, with: query

      searched_plants = PlantFacade.get_plants(state_code: @garden.state_code, zip_code: @garden.zip_code, search_name: query)

      click_on "Search"

      expect(current_path).to eq(discover_plants_path(@garden.id, @plot.id))

      searched_plants.each do |plant|
        expect(page).to have_content(plant.common_name.titleize)
      end
    end
  end

  it 'has a field to select an attribute to sort by', :vcr do
    expect(page).to have_select :sort_by

    sorted_plants = PlantFacade.get_plants(state_code: @garden.state_code, zip_code: @garden.zip_code, sort_by: 'ph_minimum')

    select "pH Min", from: :sort_by
    select "Ascending", from: :sort_order
    click_on "Search"

    expect(sorted_plants[0].common_name.titleize).to appear_before(sorted_plants[1].common_name.titleize)
    expect(sorted_plants[1].common_name.titleize).to appear_before(sorted_plants[2].common_name.titleize)

    select "pH Min", from: :sort_by
    select "Descending", from: :sort_order
    click_on "Search"

    expect(sorted_plants[2].common_name.titleize).to appear_before(sorted_plants[1].common_name.titleize)
    expect(sorted_plants[1].common_name.titleize).to appear_before(sorted_plants[0].common_name.titleize)
  end
end