json.extract! product, :id, :address, :image, :description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
