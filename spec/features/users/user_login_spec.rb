require 'rails_helper'

RSpec.describe 'user login' do
  describe 'using google oauth2' do
    it 'lets you login' do
      stub_omniauth
      visit landing_page_path
      expect(page).to have_button("Log in with Google")
      click_button "Log in with Google"
    end
  end
end