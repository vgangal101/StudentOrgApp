json.extract! student, :id, :first, :last, :dot_number, :pass, :year, :major, :receiving_email, :resume_link, :created_at, :updated_at
json.url student_url(student, format: :json)
