require 'rails_helper'

RSpec.describe 'Navigation Bar' do
  # As a user, when I visit any page on the app, I see a nav bar at the top.

  # I see the name and logo for the app.
  
  # If I am logged out, I see a button to "Login With Google"
  
  # If I am logged in, I see buttons to return to my user dashboard and log out. 
  # When I click the user dashboard button I redirected to '/dashboard'. 
  # When I click the log out button I am redirected to the root page and I see a button to log in.
  describe 'As a user, when I visit any page on the app' do
    before :each do
      @user_1 = create(:user)
      stub_omniauth
    end
    it 'I see the name and logo for the app.' do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user_1)
      visit dashboard_path
      expect(page).to have_content("###Placeholder###")
    end

    it 'If I am logged out, I see a button to "Login With Google"' do
      visit landing_page_path

      expect(page).to have_button("Log in with Google")
    end

    it 'If I am logged in, I see buttons to return to my user dashboard and log out' do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user_1)
      visit dashboard_path
      expect(page).to have_button("Log Out")
      expect(page).to have_button("Return Dashboard")
    end

    xit 'When I click the user dashboard button I redirected to /dashboard' do

    end
    
    xit 'When I click the log out button I am redirected to the root page and I see a button to log in.' do

    end
  end
end