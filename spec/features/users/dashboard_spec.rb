require 'rails_helper'

RSpec.describe 'User Dashboard', type: :feature do
  # As a user, when I visit the user dashboard ('/dashboard'),
  # I see a button to create a new garden and I see a tile for each of my current gardens
  # and each garden name is a link to that garden's dashboard ('/gardens/:id').
  describe 'As a user' do
    before:each do
      user = create(:user)
      stub_omniauth(user)
      visit landing_page_path
      click_on "Log in with Google"
    end

    it 'when I visit the user dashboard /dashboard I see a button to create a new garden' do
      visit dashboard_path

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
