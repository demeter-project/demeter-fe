require 'rails_helper'

RSpec.describe 'delete garden method' do

    # As a user, when I visit the user dashboard ('/dashboard') and 
    # I click on the 'Remove Garden' link next to a garden in my list, 
    # I see a pop up window asking me to confirm the removal. When I click on 'Yes, remove (garden_name)' 
    # I am redirected to the user dashboard and I see a message that 
    # the garden has been deleted. When a garden is deleted, all of 
    # that garden's plots and plants should be deleted as well.
  describe 'As a user, I click on remove garden next to a garden on my dashboard' do
    before :each do
      @api_base = 'https://demeter-be.herokuapp.com'
      @user = create(:user, id: 1)
      stub_omniauth(@user)
      visit landing_page_path
      click_on "Log in with Google"
    end

    it 'and I am redirected to the dashboard where I see a message that the garden has been removed and I no longer see that garden' do
      stub_request(:get)
    end
  end

end
