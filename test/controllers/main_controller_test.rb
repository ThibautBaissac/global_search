require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get main_search_url
    assert_response :success
  end
end
