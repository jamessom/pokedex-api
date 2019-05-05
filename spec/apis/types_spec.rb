require "spec_helper"

RSpec.describe "Api::V1::Types", type: :api do
  describe "GET /api/v1/types" do
    it "Get all types" do
      get '/api/v1/types'
      expect(last_response.status).to eq 200
    end
  end
end
