class HomeController < ApplicationController
  # created 7/25/2021 by Zachary Laprise
  def index

    # collects the sum of all of the pledge amounts
    @total_pledged = Pledge.sum(:amount)

    # grabs all pledgers
    @pledges = Pledge.all

    # sorts pledgers by amount and puts array in descending order
    @pledges.sort_by{ |obj| obj.amount}.reverse

    # todo join tables to use their display name rather than id

  end
end
