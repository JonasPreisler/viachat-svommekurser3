require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get leads_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_url
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post leads_url, params: { lead: { address: @lead.address, chatfuel_user_id: @lead.chatfuel_user_id, city: @lead.city, country: @lead.country, first_name: @lead.first_name, gender: @lead.gender, last_clicked_button_name: @lead.last_clicked_button_name, last_name: @lead.last_name, last_user_freeform_input: @lead.last_user_freeform_input, last_visited_block_id: @lead.last_visited_block_id, last_visited_block_name: @lead.last_visited_block_name, latitude: @lead.latitude, locale: @lead.locale, longitude: @lead.longitude, map_url: @lead.map_url, messenger_user_id: @lead.messenger_user_id, profile_pic_url: @lead.profile_pic_url, ref: @lead.ref, source: @lead.source, state: @lead.state, timezone: @lead.timezone, zip: @lead.zip } }
    end

    assert_redirected_to lead_url(Lead.last)
  end

  test "should show lead" do
    get lead_url(@lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_url(@lead)
    assert_response :success
  end

  test "should update lead" do
    patch lead_url(@lead), params: { lead: { address: @lead.address, chatfuel_user_id: @lead.chatfuel_user_id, city: @lead.city, country: @lead.country, first_name: @lead.first_name, gender: @lead.gender, last_clicked_button_name: @lead.last_clicked_button_name, last_name: @lead.last_name, last_user_freeform_input: @lead.last_user_freeform_input, last_visited_block_id: @lead.last_visited_block_id, last_visited_block_name: @lead.last_visited_block_name, latitude: @lead.latitude, locale: @lead.locale, longitude: @lead.longitude, map_url: @lead.map_url, messenger_user_id: @lead.messenger_user_id, profile_pic_url: @lead.profile_pic_url, ref: @lead.ref, source: @lead.source, state: @lead.state, timezone: @lead.timezone, zip: @lead.zip } }
    assert_redirected_to lead_url(@lead)
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete lead_url(@lead)
    end

    assert_redirected_to leads_url
  end
end
