require 'test_helper'

class Api::ServersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_server = api_servers(:one)
  end

  test "should get index" do
    get api_servers_url
    assert_response :success
  end

  test "should get new" do
    get new_api_server_url
    assert_response :success
  end

  test "should create api_server" do
    assert_difference('Api::Server.count') do
      post api_servers_url, params: { api_server: {  } }
    end

    assert_redirected_to api_server_url(Api::Server.last)
  end

  test "should show api_server" do
    get api_server_url(@api_server)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_server_url(@api_server)
    assert_response :success
  end

  test "should update api_server" do
    patch api_server_url(@api_server), params: { api_server: {  } }
    assert_redirected_to api_server_url(@api_server)
  end

  test "should destroy api_server" do
    assert_difference('Api::Server.count', -1) do
      delete api_server_url(@api_server)
    end

    assert_redirected_to api_servers_url
  end
end
