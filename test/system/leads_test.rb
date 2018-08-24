require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "creating a Lead" do
    visit leads_url
    click_on "New Lead"

    fill_in "Address", with: @lead.address
    fill_in "Chatfuel User", with: @lead.chatfuel_user_id
    fill_in "City", with: @lead.city
    fill_in "Country", with: @lead.country
    fill_in "First Name", with: @lead.first_name
    fill_in "Gender", with: @lead.gender
    fill_in "Last Clicked Button Name", with: @lead.last_clicked_button_name
    fill_in "Last Name", with: @lead.last_name
    fill_in "Last User Freeform Input", with: @lead.last_user_freeform_input
    fill_in "Last Visited Block", with: @lead.last_visited_block_id
    fill_in "Last Visited Block Name", with: @lead.last_visited_block_name
    fill_in "Latitude", with: @lead.latitude
    fill_in "Locale", with: @lead.locale
    fill_in "Longitude", with: @lead.longitude
    fill_in "Map Url", with: @lead.map_url
    fill_in "Messenger User", with: @lead.messenger_user_id
    fill_in "Profile Pic Url", with: @lead.profile_pic_url
    fill_in "Ref", with: @lead.ref
    fill_in "Source", with: @lead.source
    fill_in "State", with: @lead.state
    fill_in "Timezone", with: @lead.timezone
    fill_in "Zip", with: @lead.zip
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "updating a Lead" do
    visit leads_url
    click_on "Edit", match: :first

    fill_in "Address", with: @lead.address
    fill_in "Chatfuel User", with: @lead.chatfuel_user_id
    fill_in "City", with: @lead.city
    fill_in "Country", with: @lead.country
    fill_in "First Name", with: @lead.first_name
    fill_in "Gender", with: @lead.gender
    fill_in "Last Clicked Button Name", with: @lead.last_clicked_button_name
    fill_in "Last Name", with: @lead.last_name
    fill_in "Last User Freeform Input", with: @lead.last_user_freeform_input
    fill_in "Last Visited Block", with: @lead.last_visited_block_id
    fill_in "Last Visited Block Name", with: @lead.last_visited_block_name
    fill_in "Latitude", with: @lead.latitude
    fill_in "Locale", with: @lead.locale
    fill_in "Longitude", with: @lead.longitude
    fill_in "Map Url", with: @lead.map_url
    fill_in "Messenger User", with: @lead.messenger_user_id
    fill_in "Profile Pic Url", with: @lead.profile_pic_url
    fill_in "Ref", with: @lead.ref
    fill_in "Source", with: @lead.source
    fill_in "State", with: @lead.state
    fill_in "Timezone", with: @lead.timezone
    fill_in "Zip", with: @lead.zip
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead" do
    visit leads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead was successfully destroyed"
  end
end
