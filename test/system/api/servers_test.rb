require "application_system_test_case"

class Api::ServersTest < ApplicationSystemTestCase
  setup do
    @api_server = api_servers(:one)
  end

  test "visiting the index" do
    visit api_servers_url
    assert_selector "h1", text: "Api/Servers"
  end

  test "creating a Server" do
    visit api_servers_url
    click_on "New Api/Server"

    click_on "Create Server"

    assert_text "Server was successfully created"
    click_on "Back"
  end

  test "updating a Server" do
    visit api_servers_url
    click_on "Edit", match: :first

    click_on "Update Server"

    assert_text "Server was successfully updated"
    click_on "Back"
  end

  test "destroying a Server" do
    visit api_servers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Server was successfully destroyed"
  end
end
