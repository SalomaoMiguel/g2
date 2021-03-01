require 'rails_helper'

RSpec.describe "Dev::Configuracaos", type: :request do

  describe "GET /profile" do
    it "returns http success" do
      get "/dev/configuracao/profile"
      expect(response).to have_http_status(:success)
    end
  end

end
