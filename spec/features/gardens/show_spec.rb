require 'rails_helper'
require './spec/fixtures/webmock/sample_response'

RSpec.describe 'garden show page' do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'when I visit the garden show page' do
    it 'displays all the plots within that garden' do
      stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
        .to_return(body: garden_show.to_json)

      stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots")
        .to_return(body: plot_index.to_json)

      visit "/gardens/1?user_id=#{@user.id}"
      
      garden = GardenFacade.get_garden(1)
      plots = GardenFacade.get_garden_plots(garden.id)

      expect(page).to have_content(garden.name)

      plots.each do |plot|
        within("#plot-#{plot.id}") do
          expect(page).to have_content(plot.name)
          expect(page).to have_button("Delete #{plot.name}")

          # expect(page).to have_content(plot.soil_ph_min)
          # expect(page).to have_content(plot.soil_ph_max)
          # expect(page).to have_content(plot.shade_tolerant?)
          # expect(page).to have_content(plot.contains_toxic?)
        end
      end

      expect(page).to have_content(garden.weather_forecast.first.detailed_forecast)
      expect(page).to have_button("Add a new plot")

      click_on "Add a new plot"
      expect(page).to have_current_path(new_garden_plot_path(garden.id))
    end
  end
end