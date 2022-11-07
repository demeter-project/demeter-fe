require 'rails_helper'
require './spec/fixtures/webmock/sample_responses'

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
# save_and_open_page
          expect(page).to have_content(plot.soil_ph_min)
          expect(page).to have_content(plot.soil_ph_max)
          expect(page).to have_content(plot.shade_tolerant?)
          expect(page).to have_content(plot.contains_toxic?)
        end
      end

      expect(page).to have_content(garden.weather_forecast.first.detailed_forecast)
      expect(page).to have_button("Add a new plot")
    end
  end

  it 'each plot name links to its show page' do
    stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
      .to_return(body: garden_show.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1")
      .to_return(body: plot_show.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots")
      .to_return(body: plot_index.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots/1/plot_plants")
      .to_return(body: plot_plant_index.to_json)


    garden = GardenFacade.get_garden(1)
    visit "/gardens/1?user_id=#{@user.id}"
     click_on 'Plot 1'

     expect(current_path).to eq(garden_plot_path(garden_id: garden.id, id: 1))
  end

end
