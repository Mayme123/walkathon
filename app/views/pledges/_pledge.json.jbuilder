json.extract! pledge, :id, :pledger_user_id, :participant_user_id, :amount, :message, :created_at, :updated_at
json.url pledge_url(pledge, format: :json)
