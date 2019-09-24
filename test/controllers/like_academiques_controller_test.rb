require 'test_helper'

class LikeAcademiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get like_academiques_new_url
    assert_response :success
  end

  test "should get create" do
    get like_academiques_create_url
    assert_response :success
  end

  test "should get destroy" do
    get like_academiques_destroy_url
    assert_response :success
  end

end
