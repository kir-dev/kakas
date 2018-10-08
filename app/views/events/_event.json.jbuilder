json.extract! event, :id, :title, :image, :intro, :content, :created_at, :updated_at
json.url event_url(event, format: :json)
