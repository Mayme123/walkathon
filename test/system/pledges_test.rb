require "application_system_test_case"

class PledgesTest < ApplicationSystemTestCase
  setup do
    @pledge = pledges(:one)
  end

  test "visiting the index" do
    visit pledges_url
    assert_selector "h1", text: "Pledges"
  end

  test "creating a Pledge" do
    visit pledges_url
    click_on "New Pledge"

    fill_in "Amount", with: @pledge.amount
    fill_in "Message", with: @pledge.message
    fill_in "Participant user", with: @pledge.participant_user_id
    fill_in "Pledger user", with: @pledge.pledger_user_id
    click_on "Create Pledge"

    assert_text "Pledge was successfully created"
    click_on "Back"
  end

  test "updating a Pledge" do
    visit pledges_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @pledge.amount
    fill_in "Message", with: @pledge.message
    fill_in "Participant user", with: @pledge.participant_user_id
    fill_in "Pledger user", with: @pledge.pledger_user_id
    click_on "Update Pledge"

    assert_text "Pledge was successfully updated"
    click_on "Back"
  end

  test "destroying a Pledge" do
    visit pledges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pledge was successfully destroyed"
  end
end
