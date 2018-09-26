require "application_system_test_case"

class SpeakerImagesTest < ApplicationSystemTestCase
  setup do
    @speaker_image = speaker_images(:one)
  end

  test "visiting the index" do
    visit speaker_images_url
    assert_selector "h1", text: "Speaker Images"
  end

  test "creating a Speaker image" do
    visit speaker_images_url
    click_on "New Speaker Image"

    fill_in "Image", with: @speaker_image.image
    fill_in "Speaker", with: @speaker_image.speaker_id
    click_on "Create Speaker image"

    assert_text "Speaker image was successfully created"
    click_on "Back"
  end

  test "updating a Speaker image" do
    visit speaker_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @speaker_image.image
    fill_in "Speaker", with: @speaker_image.speaker_id
    click_on "Update Speaker image"

    assert_text "Speaker image was successfully updated"
    click_on "Back"
  end

  test "destroying a Speaker image" do
    visit speaker_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speaker image was successfully destroyed"
  end
end
