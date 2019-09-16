require 'test_helper'

class CommentaireAcademiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get commentaire_academiques_create_url
    assert_response :success
  end

  test "should get new" do
    get commentaire_academiques_new_url
    assert_response :success
  end

  test "should get edit" do
    get commentaire_academiques_edit_url
    assert_response :success
  end

  test "should get update" do
    get commentaire_academiques_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commentaire_academiques_destroy_url
    assert_response :success
  end

end
