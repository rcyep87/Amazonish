json.array!(@orders) do |order|
  json.extract! order, :id, :item_qty, :paid, :email_sent, :user_id, :item_id
  json.url order_url(order, format: :json)
end
