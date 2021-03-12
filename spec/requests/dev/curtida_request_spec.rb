require 'rails_helper'

RSpec.describe "Dev::Curtidas", type: :request do

  describe "GET /insert_curtida" do
    it "returns http success" do
      get "/dev/curtida/insert_curtida"
      expect(response).to have_http_status(:success)
    end
  end

end
