require "application_system_test_case"

class SpeakersTest < ApplicationSystemTestCase
  setup do
    @speaker = speakers(:one)
  end

  test "visiting the index" do
    visit speakers_url
    assert_selector "h1", text: "Speakers"
  end

  test "creating a Speaker" do
    visit speakers_url
    click_on "New Speaker"

    fill_in "Address", with: @speaker.address
    fill_in "Description", with: @speaker.description
    fill_in "Image", with: @speaker.image
    fill_in "Price", with: @speaker.price
    click_on "Create Speaker"

    assert_text "Speaker was successfully created"
    click_on "Back"
  end

  test "updating a Speaker" do
    visit speakers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @speaker.address
    fill_in "Description", with: @speaker.description
    fill_in "Image", with: @speaker.image
    fill_in "Price", with: @speaker.price
    click_on "Update Speaker"

    assert_text "Speaker was successfully updated"
    click_on "Back"
  end

  test "destroying a Speaker" do
    visit speakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speaker was successfully destroyed"
  end
end
