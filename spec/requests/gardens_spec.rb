require 'rails_helper'
require 'spec/fixtures/webmock/sample_response'

RSpec.describe "Gardens", type: :request do
  include SampleResponses
  describe "GET /show" do
    xit "returns http success" do
      get "/gardens/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    xit "returns http success" do
      get "/gardens/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    xit "returns http success" do
      get "/gardens/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    xit "returns http success" do
      get "/gardens/destroy"
      expect(response).to have_http_status(:success)
    end
  end
end
