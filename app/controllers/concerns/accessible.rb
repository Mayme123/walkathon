module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_resource
  end

  protected

  def check_resource
    if participant_user_signed_in?
      flash.clear
      redirect_to(participant_users_authenticated_root_path) and return
    elsif pledger_user_signed_in?
      flash.clear
      redirect_to(pledger_users_authenticated_root_path) and return
    end
  end
end