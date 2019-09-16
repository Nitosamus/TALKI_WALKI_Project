require 'test_helper'

class ReponseEmploisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reponse_emplois_new_url
    assert_response :success
  end

  test "should get create" do
    get reponse_emplois_create_url
    assert_response :success
  end

  test "should get edit" do
    get reponse_emplois_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get reponse_emplois_destroy_url
    assert_response :success
  end

end
