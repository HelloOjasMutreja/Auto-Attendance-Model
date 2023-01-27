json.extract! student, :id, :admission_number, :name, :mobile_number, :created_at, :updated_at
json.url student_url(student, format: :json)
