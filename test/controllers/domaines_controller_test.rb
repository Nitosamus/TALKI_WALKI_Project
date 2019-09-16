require 'test_helper'

class DomainesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get domaines_create_url
    assert_response :success
  end

  test "should get new" do
    get domaines_new_url
    assert_response :success
  end

  test "should get edit" do
    get domaines_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get domaines_destroy_url
    assert_response :success
  end

  test "should get update" do
    get domaines_update_url
    assert_response :success
  end

  test "should get show" do
    get domaines_show_url
    assert_response :success
  end

  test "should get index" do
    get domaines_index_url
    assert_response :success
  end

end
