class ParticipantUsers::DashboardController < ApplicationController
  # Created by Andrew Shen 7/25/21
  # Edited by Andrew Shen 7/26/21: implemented join and message system
  def index
    @pledged = current_participant_user.pledges.load

    @total_pledged = @pledged.sum(:amount)

    @message = Message.new
    @message.participant_user_id = current_participant_user.id

    @pledgers = Pledge.joins(:pledger_user).where(participant_user_id: current_participant_user.id).select('pledger_users.email, pledger_users.displayname, pledges.pledger_user_id, pledges.participant_user_id, pledges.amount, pledges.message')
  end
end
