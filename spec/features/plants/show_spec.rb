require 'rails_helper'

RSpec.describe 'The plant show page' do
  describe 'When I visit the plant show page' do
    it 'lists all attributes for a plant', :vcr do
      plant = PlantFacade.get_plant(692)
      visit plant_path(692)
   
      expect(page).to have_content("OECA10")
      expect(page).to have_content("Oenothera Caespitosa")
      expect(page).to have_content("AZ CA CO ID MT ND NE NM NV OR SD TX UT WA WY")
      expect(page).to have_content("White")
      expect(page).to have_content("High")
      expect(page).to have_content("Medium")
      expect(page).to have_content("Low")
      expect(page).to have_content("Perennial")
      expect(page).to have_content("Rapid")
      expect(page).to have_content("Medium")
      expect(page).to have_content("Intolerant")
      expect(page).to have_content(false)
      expect(page).to have_content("6.5")
      expect(page).to have_content("8.0")
      expect(page).to have_content(-13)
      expect(page).to have_content(140)
      expect(page).to have_content(7)
      expect(page).to have_content(69)
    end
  end
end