require 'test_helper'

class ProfessionalFormationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get professional_formations_create_url
    assert_response :success
  end

  test "should get new" do
    get professional_formations_new_url
    assert_response :success
  end

  test "should get edit" do
    get professional_formations_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get professional_formations_destroy_url
    assert_response :success
  end

  test "should get update" do
    get professional_formations_update_url
    assert_response :success
  end

  test "should get show" do
    get professional_formations_show_url
    assert_response :success
  end

  test "should get index" do
    get professional_formations_index_url
    assert_response :success
  end

end
