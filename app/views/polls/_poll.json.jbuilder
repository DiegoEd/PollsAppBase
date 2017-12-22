json.extract! poll, :id, :title, :description, :version, :created_at, :updated_at
json.url poll_url(poll, format: :json)
