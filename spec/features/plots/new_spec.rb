require 'rails_helper'
require './spec/fixtures/webmock/plots/sample_plot_response'

RSpec.describe 'plot new page' do
include SamplePlotResponse

  before :each do
    @api_base = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'when I visit garden show page' do
    it 'and I click new plot button I am taken to form to create new plot' do
      stub_request(:get, "#{@api_base}/api/v1/gardens/1")
      .to_return(body: garden_response.to_json)

      stub_request(:get, "#{@api_base}/api/v1/gardens/1/plots")
      .to_return(body: plots_response_no_plots.to_json)

      garden = GardenFacade.get_garden(1)
      plots = GardenFacade.get_garden_plots(garden.id)

      visit garden_path(garden.id)

      click_button "Add a new plot"

      expect(current_path).to eq(new_garden_plot_path(garden.id))

      stub_request(:post, "#{@api_base}/api/v1/gardens/1/plots")
      .with(body: plot_create_request.to_json)
      .to_return(body: plot_response.to_json)
      
      stub_request(:get, "#{@api_base}/api/v1/gardens/1")
      .to_return(body: garden_with_plot_response.to_json)

      stub_request(:get, "#{@api_base}/api/v1/gardens/1/plots")
      .to_return(body: plots_response.to_json)

      fill_in "name", with: "Test Plot"
      click_button "Create Plot"

      plots = GardenFacade.get_garden_plots(garden.id)

      expect(current_path).to eq(garden_path(garden.id))

      plots.each do |plot|
        within "#plot-#{plot.id}" do
          expect(page).to have_content(plot.name)
        end
      end
    end
  end

  describe 'sad path testing', :vcr do
    it 'has server validation when name is blank' do
      garden = GardenFacade.get_garden(1)
      visit new_garden_plot_path(garden.id)
      click_button "Create Plot"

      expect(page).to have_content("Name can't be blank")
    end
  end
end