require 'rails_helper'
require './spec/fixtures/webmock/user/sample_user_gardens_response'

RSpec.describe 'delete garden method' do
  include SampleUserGardensResponse

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

  describe 'on my user dashboard, when I delete a garden' do
    it 'takes me back to the dashboard, where I no longer see the garden' do
      @gardens.each do |garden|
        expect(page).to have_content(garden.name)
      end

      garden_1 = @gardens[0]
      garden_2 = @gardens[1]

      stub_request(:delete, "#{@api_base}/api/v1/gardens/#{garden_1.id}").to_return(body: {}.to_json)
      stub_request(:get, "#{@api_base}/api/v1/gardens?user_id=2")
        .to_return(body: user_gardens_updated.to_json)

      within "#garden-#{garden_1.id}" do
        click_on "Delete Garden"
      end

      expect(current_path).to eq(dashboard_path)
      
      expect(page).not_to have_content(garden_1.name)
      expect(page).to have_content(garden_2.name)
    end
  end
end
