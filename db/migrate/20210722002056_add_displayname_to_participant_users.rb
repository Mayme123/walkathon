class AddDisplaynameToParticipantUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :participant_users, :displayname, :string
  end
end
