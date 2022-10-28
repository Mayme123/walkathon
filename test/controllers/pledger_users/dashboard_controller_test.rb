require "test_helper"

class PledgerUsers::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pledger_users_dashboard_index_url
    assert_response :success
  end
end
