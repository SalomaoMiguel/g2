require 'rails_helper'

RSpec.describe "Dev::Boards", type: :request do

  describe "GET /board_geral" do
    it "returns http success" do
      get "/dev/board/board_geral"
      expect(response).to have_http_status(:success)
    end
  end

end
