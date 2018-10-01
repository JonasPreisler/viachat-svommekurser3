json.extract! event, :id, :program_id, :speaker_id, :name, :ticket, :image, :address, :created_at, :updated_at
json.url event_url(event, format: :json)
