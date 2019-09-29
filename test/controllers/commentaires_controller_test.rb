require 'test_helper'

class CommentairesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commentaires_new_url
    assert_response :success
  end

  test "should get create" do
    get commentaires_create_url
    assert_response :success
  end

  test "should get index" do
    get commentaires_index_url
    assert_response :success
  end

  test "should get update" do
    get commentaires_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commentaires_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get commentaires_edit_url
    assert_response :success
  end

  test "should get show" do
    get commentaires_show_url
    assert_response :success
  end

end
