require 'test_helper'

class FfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ffs_index_url
    assert_response :success
  end

  test "should get show" do
    get ffs_show_url
    assert_response :success
  end

  test "should get new" do
    get ffs_new_url
    assert_response :success
  end

  test "should get create" do
    get ffs_create_url
    assert_response :success
  end

  test "should get edit" do
    get ffs_edit_url
    assert_response :success
  end

  test "should get update" do
    get ffs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ffs_destroy_url
    assert_response :success
  end

end
