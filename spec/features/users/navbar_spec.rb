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
      stub_omniauth(@user_1)
      visit landing_page_path
      click_button "Log in with Google"
    end
    it 'I see the name and logo for the app.' do
      visit dashboard_path
      expect(page).to have_content("###Placeholder###")
    end

    it 'If I am logged out, I see a button to "Login With Google"' do
      visit dashboard_path

      click_button("Log Out")
      
      expect(current_path).to eq(landing_page_path)
      expect(page).to have_button("Log in with Google")
    end

    it 'If I am logged in, I see buttons to return to my user dashboard and log out' do
      visit dashboard_path

      expect(page).to have_button("Log Out")
      expect(page).to have_button("Return to Dashboard")
    end

    it 'When I click the user dashboard button I redirected to /dashboard' do
      visit landing_page_path

      click_button("Return to Dashboard")
      expect(current_path).to eq(dashboard_path)
    end

    it 'has sad path and redirect if user is not valid' do
      visit dashboard_path

      click_button("Log Out")
      
      visit dashboard_path

      expect(current_path).to eq(landing_page_path)
      expect(page).to have_content ("Must be logged in to access this page")
    end
  end
end