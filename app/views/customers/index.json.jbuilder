json.array!(@customers) do |customer|
  json.extract! customer, :id, :account_number
  json.url customer_url(customer, format: :json)
end
