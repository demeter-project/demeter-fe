require 'rails_helper'

RSpec.describe 'user show page' do

  xit 'displays all gardens' do
    visit user_path

    expect(page).to have_content("")
  end

  xit 'can use button to go to new garden page' do
    stub_omniauth
    visit user_path
    click_button "Create New Garden"

    expect(current_path).to eq('new_garden_path')
  end

end
