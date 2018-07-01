json.extract! order, :id, :last_purchased_item, :address, :phone, :email, :first_name, :last_name, :amount, :created_at, :updated_at
json.url order_url(order, format: :json)
