require 'test_helper'

class Staffs::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get staffs_orders_show_url
    assert_response :success
  end

end
