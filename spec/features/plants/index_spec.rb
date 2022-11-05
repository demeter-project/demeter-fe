require 'rails_helper'

RSpec.describe 'plants#index', :vcr do
  before :each do
    @api_uri = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end
  
  it 'displays a list of plants native to the gardens state' do
    # stub_request(:get, "#{@api_uri}/api/v1/gardens/1")
    #     .to_return(body: garden_show.to_json)

    # stub_request(:get, "#{@api_uri}/api/v1/gardens/1/plots")
    #   .to_return(body: plot_index.to_json)


  end
end