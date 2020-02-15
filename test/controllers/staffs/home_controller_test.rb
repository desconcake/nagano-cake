require 'test_helper'

class Staffs::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get staffs_home_top_url
    assert_response :success
  end

end
