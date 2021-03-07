require 'rails_helper'

RSpec.describe "Dev::Noticia", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/dev/noticium/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/dev/noticium/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/dev/noticium/delete"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/dev/noticium/index"
      expect(response).to have_http_status(:success)
    end
  end

end
