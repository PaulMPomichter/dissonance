require 'test_helper'

class Api::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_post = api_posts(:one)
  end

  test "should get index" do
    get api_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_api_post_url
    assert_response :success
  end

  test "should create api_post" do
    assert_difference('Api::Post.count') do
      post api_posts_url, params: { api_post: {  } }
    end

    assert_redirected_to api_post_url(Api::Post.last)
  end

  test "should show api_post" do
    get api_post_url(@api_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_post_url(@api_post)
    assert_response :success
  end

  test "should update api_post" do
    patch api_post_url(@api_post), params: { api_post: {  } }
    assert_redirected_to api_post_url(@api_post)
  end

  test "should destroy api_post" do
    assert_difference('Api::Post.count', -1) do
      delete api_post_url(@api_post)
    end

    assert_redirected_to api_posts_url
  end
end
