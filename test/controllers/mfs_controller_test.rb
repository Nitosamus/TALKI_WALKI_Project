require 'test_helper'

class MfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mfs_index_url
    assert_response :success
  end

  test "should get show" do
    get mfs_show_url
    assert_response :success
  end

  test "should get new" do
    get mfs_new_url
    assert_response :success
  end

  test "should get create" do
    get mfs_create_url
    assert_response :success
  end

  test "should get edit" do
    get mfs_edit_url
    assert_response :success
  end

  test "should get update" do
    get mfs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mfs_destroy_url
    assert_response :success
  end

end
