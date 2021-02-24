require 'rails_helper'

RSpec.describe "Dev::Auths", type: :request do

  describe "GET /login" do
    it "returns http success" do
      get "/dev/auth/login"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /logout" do
    it "returns http success" do
      get "/dev/auth/logout"
      expect(response).to have_http_status(:success)
    end
  end

end
