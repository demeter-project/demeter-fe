require 'rails_helper'

RSpec.describe "Welcomes", type: :request do
  describe "GET /index" do
    xit "returns http success" do
      get "/welcome/index"
      expect(response).to have_http_status(:success)
    end
  end

end
