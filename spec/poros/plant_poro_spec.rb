require 'rails_helper'

RSpec.describe PlantPoro do 
  describe 'instantiates with parsed api json plant data' do
    before :each do
      @mock_json_data = {
        "data": {
          "id": "192",
          "type": "plant",
          "attributes": {
            "name": "Heartleaf Arnica",
            "usda_symbol": "ARCO9",
            "scientific_name": "Arnica cordifolia",
            "states": "AK, AZ, CA, CO, ID, MI, MT, ND, NM, NV, OR, SD, UT, WA, WY",
            "duration": "Perennial"
          }
        }
      }
    end
    it 'instantiates' do
    
    end
  end
end