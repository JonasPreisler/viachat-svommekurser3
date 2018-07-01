require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, chatfuel_user_id: @customer.chatfuel_user_id, city: @customer.city, country: @customer.country, first_name: @customer.first_name, gender: @customer.gender, last_clicked_button_name: @customer.last_clicked_button_name, last_name: @customer.last_name, last_user_freeform_input: @customer.last_user_freeform_input, last_visited_block_id: @customer.last_visited_block_id, last_visited_block_name: @customer.last_visited_block_name, latitude: @customer.latitude, locale: @customer.locale, longitude: @customer.longitude, map_url: @customer.map_url, messenger_user_id: @customer.messenger_user_id, profile_pic_url: @customer.profile_pic_url, ref: @customer.ref, source: @customer.source, state: @customer.state, timezone: @customer.timezone, zip: @customer.zip } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, chatfuel_user_id: @customer.chatfuel_user_id, city: @customer.city, country: @customer.country, first_name: @customer.first_name, gender: @customer.gender, last_clicked_button_name: @customer.last_clicked_button_name, last_name: @customer.last_name, last_user_freeform_input: @customer.last_user_freeform_input, last_visited_block_id: @customer.last_visited_block_id, last_visited_block_name: @customer.last_visited_block_name, latitude: @customer.latitude, locale: @customer.locale, longitude: @customer.longitude, map_url: @customer.map_url, messenger_user_id: @customer.messenger_user_id, profile_pic_url: @customer.profile_pic_url, ref: @customer.ref, source: @customer.source, state: @customer.state, timezone: @customer.timezone, zip: @customer.zip } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
