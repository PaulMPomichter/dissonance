require "application_system_test_case"

class Api::ChannelsTest < ApplicationSystemTestCase
  setup do
    @api_channel = api_channels(:one)
  end

  test "visiting the index" do
    visit api_channels_url
    assert_selector "h1", text: "Api/Channels"
  end

  test "creating a Channel" do
    visit api_channels_url
    click_on "New Api/Channel"

    click_on "Create Channel"

    assert_text "Channel was successfully created"
    click_on "Back"
  end

  test "updating a Channel" do
    visit api_channels_url
    click_on "Edit", match: :first

    click_on "Update Channel"

    assert_text "Channel was successfully updated"
    click_on "Back"
  end

  test "destroying a Channel" do
    visit api_channels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Channel was successfully destroyed"
  end
end
