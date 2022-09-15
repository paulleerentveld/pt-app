json.extract! instructor, :id, :firstname, :lastname, :email, :mobile, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
