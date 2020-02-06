json.extract! meeting, :id, :date, :name, :type, :sponsor_company, :blurb, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
