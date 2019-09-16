require 'test_helper'

class ReponseProfessionnelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reponse_professionnels_new_url
    assert_response :success
  end

  test "should get create" do
    get reponse_professionnels_create_url
    assert_response :success
  end

  test "should get edit" do
    get reponse_professionnels_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get reponse_professionnels_destroy_url
    assert_response :success
  end

end
