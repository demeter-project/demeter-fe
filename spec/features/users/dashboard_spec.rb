require 'rails_helper'
require './spec/fixtures/webmock/user/sample_user_gardens_response'

RSpec.describe 'User Dashboard', type: :feature do
  include SampleUserGardensResponse
  # As a user, when I visit the user dashboard ('/dashboard'),
  # I see a button to create a new garden and I see a tile for each of my current gardens
  # and each garden name is a link to that garden's dashboard ('/gardens/:id').
  describe 'As a user' do
    before :each do
      @api_base = 'https://demeter-be.herokuapp.com'
      @user = create(:user, id: 2)
      stub_request(:get, "#{@api_base}/api/v1/gardens?user_id=2")
      .to_return(body: user_gardens.to_json)
      @gardens = GardenFacade.get_user_gardens(@user.id)
      stub_omniauth(@user)
      visit landing_page_path
      click_on "Login with Google"
    end

    it 'when I visit the user dashboard /dashboard I see a button to create a new garden' do
      expect(current_path).to eq(dashboard_path)

      expect(page).to have_button("Create New Garden")
    end

    it 'I see my current gardens and each garden name is a link to that gardens dashboard /gardens/:id' do
      @gardens.each do |garden|
        within "#garden-#{garden.id}" do
          expect(page).to have_link("#{garden.name}")
          expect(page).to have_link "Delete This Garden"
        end
      end
    end
  end
end
