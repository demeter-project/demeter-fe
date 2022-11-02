require 'rails_helper'

RSpec.describe "Plots", type: :request do
  describe "GET /show" do
    xit "returns http success" do
      get "/plots/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    xit "returns http success" do
      get "/plots/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    xit "returns http success" do
      get "/plots/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    xit "returns http success" do
      get "/plots/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
