RSpec.describe 'new garden page' do

  xit 'has static text for new garden' do
    visit new_garden_path

    expect(page).to have_content("Create New Garden")
    expect(page).to have_content("Name")
    expect(page).to have_content("Zip Code")
    expect(page).to have_content("State Code")
  end

  xit 'can create new garden' do
    stub_omniauth
    visit new_garden_path

    fill_in("Name", with: "Sunflower Patch")
    fill_in("Zip Code", with: "94952")
    select("CA", from: "State Code")
    click_on 'Submit'

    expect(current_path).to eq(gardens_path)
    expect(Garden.last.name).to eq("Sunflower Patch")
  end

  xit 'can fail to create new garden' do
    stub_omniauth
    visit new_garden_path

    fill_in("Name", with: "Front Yard Flower Garden")
    select("CA", from: "State Code")
    click_on 'Submit'

    expect(current_path).to eq(new_gardens_path)
    expect(Garden.last.name).to_not eq("Sunflower Patch")
  end

end
