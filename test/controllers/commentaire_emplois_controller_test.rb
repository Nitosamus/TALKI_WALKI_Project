require 'test_helper'

class CommmentaireEmploisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commmentaire_emplois_new_url
    assert_response :success
  end

  test "should get create" do
    get commmentaire_emplois_create_url
    assert_response :success
  end

  test "should get edit" do
    get commmentaire_emplois_edit_url
    assert_response :success
  end

  test "should get update" do
    get commmentaire_emplois_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commmentaire_emplois_destroy_url
    assert_response :success
  end

end