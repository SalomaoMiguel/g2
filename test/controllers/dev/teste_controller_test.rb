require "test_helper"

class Dev::TesteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dev_teste_index_url
    assert_response :success
  end
end
