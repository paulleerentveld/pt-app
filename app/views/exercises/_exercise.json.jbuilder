json.extract! exercise, :id, :name, :description, :image, :url, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
