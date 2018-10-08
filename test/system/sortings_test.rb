require "application_system_test_case"

class SortingsTest < ApplicationSystemTestCase
  setup do
    @sorting = sortings(:one)
  end

  test "visiting the index" do
    visit sortings_url
    assert_selector "h1", text: "Sortings"
  end

  test "creating a Sorting" do
    visit sortings_url
    click_on "New Sorting"

    click_on "Create Sorting"

    assert_text "Sorting was successfully created"
    click_on "Back"
  end

  test "updating a Sorting" do
    visit sortings_url
    click_on "Edit", match: :first

    click_on "Update Sorting"

    assert_text "Sorting was successfully updated"
    click_on "Back"
  end

  test "destroying a Sorting" do
    visit sortings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sorting was successfully destroyed"
  end
end
