require 'rails_helper'
require './spec/fixtures/webmock/plots/sample_plot_response'

RSpec.describe 'plot delete' do 
  include SamplePlotResponse 

  before :each do
    @api_base = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'when I visit the garden show page' do
    describe 'and click on the remove a plot button next to a plot' do
      it 'I see a pop-up asking me to confirm' do
        stub_request(:get, "#{@api_base}/api/v1/gardens/1")
        .to_return(body: garden_with_plot_response.to_json)

        stub_request(:get, "#{@api_base}/api/v1/gardens/1/plots")
        .to_return(body: plot_response.to_json)

        garden = GardenFacade.get_garden(1)
        plots = GardenFacade.get_garden_plots(garden.id)

        visit "/gardens/1?user_id=#{@user.id}"

        plots.each do |plot|
          within("#plot-#{plot.id}") do
            expect(page).to have_content(plot.name)
          end
        end

        click_on "Delete #{plots[0].name}"

        expect(page).to have_content()
      end
    end
  end
end