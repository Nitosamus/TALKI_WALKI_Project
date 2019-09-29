require 'test_helper'

class JobcomsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get jobcoms_create_url
    assert_response :success
  end

  test "should get edit" do
    get jobcoms_edit_url
    assert_response :success
  end

  test "should get update" do
    get jobcoms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get jobcoms_destroy_url
    assert_response :success
  end

end
