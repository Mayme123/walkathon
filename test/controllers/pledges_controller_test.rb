require "test_helper"

class PledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pledge = pledges(:one)
  end

  test "should get index" do
    get pledges_url
    assert_response :success
  end

  test "should get new" do
    get new_pledge_url
    assert_response :success
  end

  test "should create pledge" do
    assert_difference('Pledge.count') do
      post pledges_url, params: { pledge: { amount: @pledge.amount, message: @pledge.message, participant_user_id: @pledge.participant_user_id, pledger_user_id: @pledge.pledger_user_id } }
    end

    assert_redirected_to pledge_url(Pledge.last)
  end

  test "should show pledge" do
    get pledge_url(@pledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_pledge_url(@pledge)
    assert_response :success
  end

  test "should update pledge" do
    patch pledge_url(@pledge), params: { pledge: { amount: @pledge.amount, message: @pledge.message, participant_user_id: @pledge.participant_user_id, pledger_user_id: @pledge.pledger_user_id } }
    assert_redirected_to pledge_url(@pledge)
  end

  test "should destroy pledge" do
    assert_difference('Pledge.count', -1) do
      delete pledge_url(@pledge)
    end

    assert_redirected_to pledges_url
  end
end
