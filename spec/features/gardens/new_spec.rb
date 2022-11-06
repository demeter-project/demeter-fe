require 'rails_helper'
require './spec/fixtures/webmock/garden_creation/sample_responses'

RSpec.describe 'new garden page' do
  include SampleResponses

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  it 'creates a new garden' do
    stub_request(:post, "#{@api_uri}/api/v1/gardens")
      .with(body: new_garden_request_body.to_json)
      .to_return(body: new_garden.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{new_garden[:data][:id].to_i}")
      .to_return(body: garden_show.to_json)

    stub_request(:get, "#{@api_ur}/api/v1/gardens/#{new_garden[:data][:id].to_i}/plots")
      .to_return(body: plots_index_empty.to_json)

    visit new_garden_path

    expect(page).to have_content("Create a New Garden")

    fill_in :name, with: new_garden_request_body["name"]
    fill_in :state_code, with: new_garden_request_body["state_code"]
    fill_in :zip_code, with: new_garden_request_body["zip_code"]

    click_button "Create Garden"

    garden = GardenFacade.get_garden(new_garden[:data][:id].to_i)

    expect(current_path).to eq(garden_path(garden.id))
    expect(page).to have_content(garden.name)
  end
end
