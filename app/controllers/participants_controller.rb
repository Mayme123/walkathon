class ParticipantsController < ApplicationController
  # Created by Matt Ayme 7/23/2021: runs when the participants/index page loads,
  # hashes each participant with their total pledges
  def index
    @test = "test"
    # create hash for participants that looks like: participant_id:[array of pledge dollar amounts]
    @participant_pledge_totals = Hash.new{|participant_id, pledge_amount| participant_id[pledge_amount] = []}
    Pledge.all.each do |pledge|
      # for each pledge, populate hash with the amount to the correct participant
      @participant_pledge_totals[pledge.participant_user_id] << pledge.amount.to_f
    end
    # TODO: for each participant in the hash, reduce the array to the sum of the pledge amounts
    @participant_pledge_totals.each do |participant, amounts|
      puts amounts.reduce { |total, pledge_amount| total += pledge_amount }
    end

    #test code
    # puts @participant_pledge_totals
    # @pledge_test = current_participant_user.pledges.load
    # @pledge_test.each {|pledge| puts "message: "+ pledge.message}
  end
end
