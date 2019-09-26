require 'test_helper'

class AfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get afs_index_url
    assert_response :success
  end

end
