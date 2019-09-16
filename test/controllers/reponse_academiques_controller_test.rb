require 'test_helper'

class ReponseAcademiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reponse_academiques_new_url
    assert_response :success
  end

  test "should get create" do
    get reponse_academiques_create_url
    assert_response :success
  end

  test "should get edit" do
    get reponse_academiques_edit_url
    assert_response :success
  end

  test "should get update" do
    get reponse_academiques_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reponse_academiques_destroy_url
    assert_response :success
  end

end
