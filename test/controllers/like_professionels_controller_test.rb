require 'test_helper'

class LikeProfessionelsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get like_professionels_new_url
    assert_response :success
  end

  test "should get create" do
    get like_professionels_create_url
    assert_response :success
  end

  test "should get destroy" do
    get like_professionels_destroy_url
    assert_response :success
  end

end
