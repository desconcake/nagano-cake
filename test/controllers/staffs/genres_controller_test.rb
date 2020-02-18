require 'test_helper'

class Staffs::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffs_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get staffs_genres_edit_url
    assert_response :success
  end

end
