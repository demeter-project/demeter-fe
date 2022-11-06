require 'rails_helper'

RSpec.describe 'delete garden method' do

  before:each do
    user = create(:user, id: 1)
    stub_omniauth(user)
    visit landing_page_path
    click_on "Log in with Google"
  end

  xit 'can delete a garden' do
    visit dashboard_path
    click_on 'Delete This Garden'
  end

  xit 'wont delete a garden if you do not confirm' do
    visit dashboard_path
    click_on 'Delete This Garden'


  end

end
