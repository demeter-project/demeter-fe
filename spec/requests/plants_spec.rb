require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/plants/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/plants/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/plants/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/plants/show"
      expect(response).to have_http_status(:success)
    end
  end

end
