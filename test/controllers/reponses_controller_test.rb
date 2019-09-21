require 'test_helper'

class ReponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reponses_new_url
    assert_response :success
  end

  test "should get create" do
    get reponses_create_url
    assert_response :success
  end

  test "should get index" do
    get reponses_index_url
    assert_response :success
  end

  test "should get update" do
    get reponses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reponses_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get reponses_edit_url
    assert_response :success
  end

  test "should get show" do
    get reponses_show_url
    assert_response :success
  end

end
