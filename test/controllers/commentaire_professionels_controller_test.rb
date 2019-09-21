require 'test_helper'

class CommmentaireProfessionelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commmentaire_professionels_new_url
    assert_response :success
  end

  test "should get create" do
    get commmentaire_professionels_create_url
    assert_response :success
  end

  test "should get edit" do
    get commmentaire_professionels_edit_url
    assert_response :success
  end

  test "should get update" do
    get commmentaire_professionels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commmentaire_professionels_destroy_url
    assert_response :success
  end

end
