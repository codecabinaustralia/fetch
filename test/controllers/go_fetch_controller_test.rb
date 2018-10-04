require 'test_helper'

class GoFetchControllerTest < ActionDispatch::IntegrationTest
  test "should get start_yellow_pages_australia" do
    get go_fetch_start_yellow_pages_australia_url
    assert_response :success
  end

end
