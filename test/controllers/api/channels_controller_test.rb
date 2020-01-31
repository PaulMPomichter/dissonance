require 'test_helper'

class Api::ChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_channel = api_channels(:one)
  end

  test "should get index" do
    get api_channels_url
    assert_response :success
  end

  test "should get new" do
    get new_api_channel_url
    assert_response :success
  end

  test "should create api_channel" do
    assert_difference('Api::Channel.count') do
      post api_channels_url, params: { api_channel: {  } }
    end

    assert_redirected_to api_channel_url(Api::Channel.last)
  end

  test "should show api_channel" do
    get api_channel_url(@api_channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_channel_url(@api_channel)
    assert_response :success
  end

  test "should update api_channel" do
    patch api_channel_url(@api_channel), params: { api_channel: {  } }
    assert_redirected_to api_channel_url(@api_channel)
  end

  test "should destroy api_channel" do
    assert_difference('Api::Channel.count', -1) do
      delete api_channel_url(@api_channel)
    end

    assert_redirected_to api_channels_url
  end
end
