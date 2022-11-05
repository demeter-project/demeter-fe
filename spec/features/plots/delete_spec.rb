require 'rails_helper'
require './spec/fixtures/webmock/plot_delete/'

RSpec.describe 'plot delete' do 
  include SamplePlotResponse 

  before :each do
    @api_base = 'https://demeter-be.herokuapp.com'
    @user = create(:user, id: 1)
    stub_omniauth(@user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  describe 'when I visit the garden show page' do
    describe 'and click on the remove a plot button next to a plot' do
      it 'I see a pop-up asking me to confirm' do
        
      end
    end
  end
end