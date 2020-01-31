require "application_system_test_case"

class Api::PostsTest < ApplicationSystemTestCase
  setup do
    @api_post = api_posts(:one)
  end

  test "visiting the index" do
    visit api_posts_url
    assert_selector "h1", text: "Api/Posts"
  end

  test "creating a Post" do
    visit api_posts_url
    click_on "New Api/Post"

    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit api_posts_url
    click_on "Edit", match: :first

    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit api_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
