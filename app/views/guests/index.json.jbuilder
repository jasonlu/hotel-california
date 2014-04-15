json.array!(@guests) do |guest|
  json.extract! guest, :id, :fname, :lname, :customer_id
  json.url guest_url(guest, format: :json)
end
