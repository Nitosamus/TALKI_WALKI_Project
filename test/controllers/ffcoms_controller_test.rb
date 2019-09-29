require 'test_helper'

class FfcomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ffcoms_new_url
    assert_response :success
  end

  test "should get create" do
    get ffcoms_create_url
    assert_response :success
  end

  test "should get edit" do
    get ffcoms_edit_url
    assert_response :success
  end

  test "should get update" do
    get ffcoms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ffcoms_destroy_url
    assert_response :success
  end

end
