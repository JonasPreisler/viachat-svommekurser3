require "application_system_test_case"

class PropertyImagesTest < ApplicationSystemTestCase
  setup do
    @property_image = property_images(:one)
  end

  test "visiting the index" do
    visit property_images_url
    assert_selector "h1", text: "Property Images"
  end

  test "creating a Property image" do
    visit property_images_url
    click_on "New Property Image"

    fill_in "Image", with: @property_image.image
    fill_in "Property", with: @property_image.property_id
    click_on "Create Property image"

    assert_text "Property image was successfully created"
    click_on "Back"
  end

  test "updating a Property image" do
    visit property_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @property_image.image
    fill_in "Property", with: @property_image.property_id
    click_on "Update Property image"

    assert_text "Property image was successfully updated"
    click_on "Back"
  end

  test "destroying a Property image" do
    visit property_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property image was successfully destroyed"
  end
end
