class PledgerUsers::DashboardController < ApplicationController

  # edited 7/24/2021 by pranjal suri: index
  # edited 7/25/2021 by pranjal suri: display pledges for user

  # all pldgers in DB
  def index

    @all_pledgers = PledgerUser.all
    @pledger = current_pledger_user
    @current_id = current_pledger_user.id
    @all_pledges = Pledge.where(:pledger_user_id => @current_id).all.to_a

  end


end
