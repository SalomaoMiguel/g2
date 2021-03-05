require 'rails_helper'

RSpec.describe "Dev::Tags", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/dev/tag/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/dev/tag/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
