json.extract! client, :id, :firstname, :lastname, :email, :mobile, :sex, :weight, :height, :dob, :instructor_id, :created_at, :updated_at
json.url client_url(client, format: :json)
