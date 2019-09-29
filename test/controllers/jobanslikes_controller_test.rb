require 'test_helper'

class JobanslikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get jobanslikes_create_url
    assert_response :success
  end

end
