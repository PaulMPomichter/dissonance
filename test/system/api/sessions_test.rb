require "application_system_test_case"

class Api::SessionsTest < ApplicationSystemTestCase
  setup do
    @api_session = api_sessions(:one)
  end

  test "visiting the index" do
    visit api_sessions_url
    assert_selector "h1", text: "Api/Sessions"
  end

  test "creating a Session" do
    visit api_sessions_url
    click_on "New Api/Session"

    click_on "Create Session"

    assert_text "Session was successfully created"
    click_on "Back"
  end

  test "updating a Session" do
    visit api_sessions_url
    click_on "Edit", match: :first

    click_on "Update Session"

    assert_text "Session was successfully updated"
    click_on "Back"
  end

  test "destroying a Session" do
    visit api_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Session was successfully destroyed"
  end
end
