require 'rails_helper'

RSpec.describe 'user login' do
  describe 'using google oauth2' do
    it 'lets you login' do
      user = create(:user)
      stub_omniauth(user)

      visit landing_page_path

      expect(page).to have_button("Log in with Google")

      click_button "Log in with Google"

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content("Example User")
    end
  end
end