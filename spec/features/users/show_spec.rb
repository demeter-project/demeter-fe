require 'rails_helper'

RSpec.describe 'user show page' do
  before:each do
    user = create(:user)
    stub_omniauth(user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  # xit 'displays all gardens' do
  #   visit dashboard_path

  #   expect(page).to have_content("")
  # end

  it 'can use button to go to new garden page' do
    visit dashboard_path
    click_button "Create New Garden"

    expect(current_path).to eq('/gardens/new')
  end

end
