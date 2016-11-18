json.extract! urlfav, :id, :url, :description, :created_at, :updated_at
json.url urlfav_url(urlfav, format: :json)