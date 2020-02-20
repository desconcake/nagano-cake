require 'test_helper'

class SubAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sub_addresses_create_url
    assert_response :success
  end

  test "should get update" do
    get sub_addresses_update_url
    assert_response :success
  end

  test "should get delete" do
    get sub_addresses_delete_url
    assert_response :success
  end

end
