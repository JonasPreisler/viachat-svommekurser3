require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Address", with: @customer.address
    fill_in "Chatfuel User", with: @customer.chatfuel_user_id
    fill_in "City", with: @customer.city
    fill_in "Country", with: @customer.country
    fill_in "First Name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "Last Clicked Button Name", with: @customer.last_clicked_button_name
    fill_in "Last Name", with: @customer.last_name
    fill_in "Last User Freeform Input", with: @customer.last_user_freeform_input
    fill_in "Last Visited Block", with: @customer.last_visited_block_id
    fill_in "Last Visited Block Name", with: @customer.last_visited_block_name
    fill_in "Latitude", with: @customer.latitude
    fill_in "Locale", with: @customer.locale
    fill_in "Longitude", with: @customer.longitude
    fill_in "Map Url", with: @customer.map_url
    fill_in "Messenger User", with: @customer.messenger_user_id
    fill_in "Profile Pic Url", with: @customer.profile_pic_url
    fill_in "Ref", with: @customer.ref
    fill_in "Source", with: @customer.source
    fill_in "State", with: @customer.state
    fill_in "Timezone", with: @customer.timezone
    fill_in "Zip", with: @customer.zip
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @customer.address
    fill_in "Chatfuel User", with: @customer.chatfuel_user_id
    fill_in "City", with: @customer.city
    fill_in "Country", with: @customer.country
    fill_in "First Name", with: @customer.first_name
    fill_in "Gender", with: @customer.gender
    fill_in "Last Clicked Button Name", with: @customer.last_clicked_button_name
    fill_in "Last Name", with: @customer.last_name
    fill_in "Last User Freeform Input", with: @customer.last_user_freeform_input
    fill_in "Last Visited Block", with: @customer.last_visited_block_id
    fill_in "Last Visited Block Name", with: @customer.last_visited_block_name
    fill_in "Latitude", with: @customer.latitude
    fill_in "Locale", with: @customer.locale
    fill_in "Longitude", with: @customer.longitude
    fill_in "Map Url", with: @customer.map_url
    fill_in "Messenger User", with: @customer.messenger_user_id
    fill_in "Profile Pic Url", with: @customer.profile_pic_url
    fill_in "Ref", with: @customer.ref
    fill_in "Source", with: @customer.source
    fill_in "State", with: @customer.state
    fill_in "Timezone", with: @customer.timezone
    fill_in "Zip", with: @customer.zip
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
