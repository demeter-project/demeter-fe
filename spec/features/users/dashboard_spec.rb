require 'rails_helper'

RSpec.describe 'User Dashboard', type: :feature do
  # As a user, when I visit the user dashboard ('/dashboard'), 
  # I see a button to create a new garden and I see a tile for each of my current gardens 
  # and each garden name is a link to that garden's dashboard ('/gardens/:id').
  describe 'As a user' do
    before :each do
      @user_1 = create(:user)
      @gardens = create_list(:garden, 4)
    end
    it 'when I visit the user dashboard /dashboard I see a button to create a new garden' do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user_1)
      visit dashboard_path

      expect(page).to have_button("Create Garden")
    end
  end
end