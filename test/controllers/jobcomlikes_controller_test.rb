require 'test_helper'

class JobcomlikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get jobcomlikes_create_url
    assert_response :success
  end

end
