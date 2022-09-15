json.extract! workout, :id, :type, :status, :created_at, :updated_at
json.url workout_url(workout, format: :json)
