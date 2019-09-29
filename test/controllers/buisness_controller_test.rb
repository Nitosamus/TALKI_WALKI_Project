require 'test_helper'

class BuisnessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buisness_index_url
    assert_response :success
  end

end
