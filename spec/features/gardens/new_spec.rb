require 'rails_helper'

RSpec.describe 'new garden page' do

  before:each do
    user = create(:user, id: 1)
    stub_omniauth(user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  it 'has static text for new garden' do
    visit new_garden_path

    expect(page).to have_content("Create New Garden")
    expect(page).to have_content("Name")
    # save_and_open_page
    expect(page).to have_content("Zip code")
    expect(page).to have_content("State code")
  end

  xit 'can create new garden' do
    visit new_garden_path

    fill_in("Name", with: "Sunflower Patch")
    fill_in("Zip Code", with: "94952")
    select("CA", from: "State Code")
    click_on 'Submit'

    expect(current_path).to eq(gardens_path)
    expect(Garden.last.name).to eq("Sunflower Patch")
  end

  xit 'can fail to create new garden' do
    visit new_garden_path

    fill_in("Name", with: "Front Yard Flower Garden")
    select("CA", from: "State Code")
    click_on 'Submit'

    expect(current_path).to eq(new_gardens_path)
    expect(Garden.last.name).to_not eq("Sunflower Patch")
  end

end
