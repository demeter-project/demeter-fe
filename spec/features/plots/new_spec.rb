require 'rails_helper'
require './spec/fixtures/webmock/plot_creation/sample_garden_response'

RSpec.describe 'plot new page' do
include SampleGardenResponse

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
      .to_return(body: plot_response_no_plots.to_json)

      visit "/gardens/1?user_id=#{@user.id}"

      garden = GardenFacade.get_garden(1)
      plots = GardenFacade.get_garden_plots(garden.id)
      
      expect(plots).to eq([])

      click_button "Add a new plot"

      expect(current_path).to eq(new_garden_plot_path(garden.id))

      save_and_open_page

      fill_in "name", with: "Test Plot"
      click_button "Submit"

      
    end
  end
end