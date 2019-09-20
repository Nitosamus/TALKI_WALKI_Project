require 'test_helper'

class LikeEmploisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get like_emplois_new_url
    assert_response :success
  end

  test "should get create" do
    get like_emplois_create_url
    assert_response :success
  end

  test "should get destroy" do
    get like_emplois_destroy_url
    assert_response :success
  end

end
