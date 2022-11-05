require 'rails_helper'

RSpec.describe 'plot new page' do
  before :each do
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'when I visit garden show page' do
    it 'and I click new plot button I am taken to form to create new plot' do
      visit garden_
    end
  end
end