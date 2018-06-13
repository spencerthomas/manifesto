json.extract! goal, :id, :name, :description, :goal_date, :complete, :user_id, :created_at, :updated_at
json.url goal_url(goal, format: :json)
