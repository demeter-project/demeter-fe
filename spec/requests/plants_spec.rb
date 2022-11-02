require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /new" do
    xit "returns http success" do
      get "/plants/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    xit "returns http success" do
      get "/plants/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    xit "returns http success" do
      get "/plants/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    xit "returns http success" do
      get "/plants/show"
      expect(response).to have_http_status(:success)
    end
  end

end