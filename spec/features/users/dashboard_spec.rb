require 'rails_helper'
require './spec/fixtures/webmock/user/sample_user_gardens_response'

RSpec.describe 'User Dashboard', type: :feature do
  include SampleUserGardensResponse
  # As a user, when I visit the user dashboard ('/dashboard'),
  # I see a button to create a new garden and I see a tile for each of my current gardens
  # and each garden name is a link to that garden's dashboard ('/gardens/:id').
  describe 'As a user' do

    it 'when I visit the user dashboard /dashboard I see a button to create a new garden' do
      @api_base = 'https://demeter-be.herokuapp.com'
      @user = create(:user, id: 2)
      stub_request(:get, "#{@api_base}/api/v1/gardens?user_id=2")
      .to_return(body: user_gardens.to_json)

      stub_omniauth(@user)
      visit landing_page_path

      click_on "Log in with Google"

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_button("Create New Garden")
    end

    # xit 'I see my current gardens and each garden name is a link to that gardens dashboard /gardens/:id' do
    #   visit dashboard_path

    #   @gardens.each do |garden|
    #     within "#garden.id" do
    #       expect(page).to have_link("#{garden.name}")
    #     end
    #   end
    # end
  end
end
