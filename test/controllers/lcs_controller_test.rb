require 'test_helper'

class LcsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lcs_create_url
    assert_response :success
  end

end
