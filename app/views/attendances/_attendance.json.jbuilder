json.extract! attendance, :id, :date, :status, :student_id, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
