require 'test_helper'

class FfanslikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ffanslikes_create_url
    assert_response :success
  end

end
