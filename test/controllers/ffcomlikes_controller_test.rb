require 'test_helper'

class FfcomlikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ffcomlikes_create_url
    assert_response :success
  end

end
