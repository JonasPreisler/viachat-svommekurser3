json.extract! business, :id, :name, :user_id, :image, :website, :secret, :slug, :created_at, :updated_at
json.url business_url(business, format: :json)
