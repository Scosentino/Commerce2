json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :active
  json.url product_url(product, format: :json)
end
