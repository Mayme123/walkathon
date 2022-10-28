class AddDisplaynameToPledgerUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :pledger_users, :displayname, :string
  end
end
