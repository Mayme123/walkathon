require "test_helper"

class ParticipantUsers::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get participant_users_dashboard_index_url
    assert_response :success
  end
end
