class CreatePledges < ActiveRecord::Migration[6.1]
  def change
    create_table :pledges do |t|
      t.references :pledger_user, null: false, foreign_key: true
      t.references :participant_user, null: false, foreign_key: true
      t.decimal :amount
      t.string :message

      t.timestamps
    end
  end
end
