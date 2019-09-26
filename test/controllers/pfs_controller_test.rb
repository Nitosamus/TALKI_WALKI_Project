require 'test_helper'

class PfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pfs_index_url
    assert_response :success
  end

end
