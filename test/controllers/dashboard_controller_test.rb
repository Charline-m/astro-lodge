require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get custom_dashboard" do
    get dashboard_custom_dashboard_url
    assert_response :success
  end
end
