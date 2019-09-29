require 'test_helper'

class FfansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ffans_new_url
    assert_response :success
  end

  test "should get create" do
    get ffans_create_url
    assert_response :success
  end

  test "should get edit" do
    get ffans_edit_url
    assert_response :success
  end

  test "should get update" do
    get ffans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ffans_destroy_url
    assert_response :success
  end

end
