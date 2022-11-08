require 'rails_helper'
require './spec/fixtures/webmock/garden_new.rb'

RSpec.describe 'new garden page' do
  include GardenCreateResponse

  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Login with Google"
  end

  it 'creates a new garden' do
    stub_request(:post, "#{@api_uri}/api/v1/gardens")
      .with(body: new_garden_request_body.to_json)
      .to_return(body: new_garden.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{new_garden[:data][:id]}")
      .to_return(body: garden_show.to_json)

    stub_request(:get, "#{@api_uri}/api/v1/gardens/#{new_garden[:data][:id]}/plots")
      .to_return(body: plots_index_empty.to_json)

    visit new_garden_path

    expect(page).to have_content("Create New Garden")

    fill_in :name, with: new_garden_request_body[:name]
    select new_garden_request_body[:state_code], from: :state_code

    fill_in :zip_code, with: new_garden_request_body[:zip_code]

    click_button "Create Garden"

    garden = GardenFacade.get_garden(new_garden[:data][:id].to_i)

    expect(current_path).to eq(garden_path(garden.id))
    expect(page).to have_content(garden.name)
  end

  it 'displays errors if name empty', :vcr do
    visit new_garden_path
  
    select "CO", from: :state_code
    fill_in :zip_code, with: "80223"
  
    click_button "Create Garden"
  
    expect(page).to have_content("Name can't be blank")
  end

  it 'displays zip code errors', :vcr do
    visit new_garden_path

    fill_in :name, with: "Test Garden"
    select "CO", from: :state_code
    click_button "Create Garden"

    expect(page).to have_content("Zip code can't be blank")

    fill_in :zip_code, with: "8944"
    click_button "Create Garden"

    expect(page).to have_content("Zip code is the wrong length (should be 5 characters)")

    fill_in :zip_code, with: "F&%$U"
    click_button "Create Garden"

    expect(page).to have_content("Zip code is not a valid US postal code")
  end

  it 'displays state code errors', :vcr do
    visit new_garden_path

    fill_in :name, with: "Test Garden"
    fill_in :zip_code, with: "82072"

    click_button "Create Garden"

    expect(page).to have_content("State code can't be blank")
  end

  it 'displays multiple errors', :vcr do
    visit new_garden_path

    fill_in :zip_code, with: "b!t(#"
    click_button "Create Garden"

    expect(page).to have_content("State code can't be blank")
    expect(page).to have_content("Zip code is not a valid US postal code")
    expect(page).to have_content("Name can't be blank")
  end
end
