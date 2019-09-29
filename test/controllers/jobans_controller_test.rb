require 'test_helper'

class JobansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get jobans_new_url
    assert_response :success
  end

  test "should get create" do
    get jobans_create_url
    assert_response :success
  end

  test "should get edit" do
    get jobans_edit_url
    assert_response :success
  end

  test "should get update" do
    get jobans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get jobans_destroy_url
    assert_response :success
  end

end
