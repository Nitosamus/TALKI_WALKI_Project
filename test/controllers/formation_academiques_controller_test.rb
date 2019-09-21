require 'test_helper'

class FormationAcademiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get formation_academiques_create_url
    assert_response :success
  end

  test "should get new" do
    get formation_academiques_new_url
    assert_response :success
  end

  test "should get edit" do
    get formation_academiques_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get formation_academiques_destroy_url
    assert_response :success
  end

  test "should get update" do
    get formation_academiques_update_url
    assert_response :success
  end

  test "should get show" do
    get formation_academiques_show_url
    assert_response :success
  end

  test "should get index" do
    get formation_academiques_index_url
    assert_response :success
  end

end
