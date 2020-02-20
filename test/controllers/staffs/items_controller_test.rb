require 'test_helper'

class Staffs::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_items_index_url
    assert_response :success
  end

  test "should get show" do
    get staffs_items_show_url
    assert_response :success
  end

  test "should get new" do
    get staffs_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get staffs_items_edit_url
    assert_response :success
  end

end
