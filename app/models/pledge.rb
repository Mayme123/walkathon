class Pledge < ApplicationRecord
  belongs_to :pledger_user
  belongs_to :participant_user
end
