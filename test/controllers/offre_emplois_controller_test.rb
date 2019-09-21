require 'test_helper'

class OffreEmploisControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get offre_emplois_create_url
    assert_response :success
  end

  test "should get new" do
    get offre_emplois_new_url
    assert_response :success
  end

  test "should get edit" do
    get offre_emplois_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get offre_emplois_destroy_url
    assert_response :success
  end

  test "should get update" do
    get offre_emplois_update_url
    assert_response :success
  end

  test "should get show" do
    get offre_emplois_show_url
    assert_response :success
  end

  test "should get index" do
    get offre_emplois_index_url
    assert_response :success
  end

end
