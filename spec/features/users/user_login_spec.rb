require 'rails_helper'

RSpec.describe 'user login' do
  # As a visitor to the landing page ('/'), I see a button to "Login with Google" and
  # when I click this button, I am able to log in with my google credentials and
  # then I am redirected to my dashboard ('/dashboard) and I see my username displayed.
  describe 'As a visitor to the landing page' do
    it 'I see a button to Login with Google and when I click this button I can log in' do
      user = create(:user, id: 1, username: "Major Equinox")
      stub_omniauth(user)
# require "pry"; binding.pry
      visit landing_page_path

      expect(page).to have_button("Log in with Google")

      click_button "Log in with Google"
# save_and_open_page
      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content('Major Equinox')
    end
  end
end
