require 'test_helper'

class Staffs::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_customers_index_url
    assert_response :success
  end

  test "should get show" do
    get staffs_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get staffs_customers_edit_url
    assert_response :success
  end

end
