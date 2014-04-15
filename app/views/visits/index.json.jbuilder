json.array!(@visits) do |visit|
  json.extract! visit, :id, :customer_id, :people, :should_checkin_at, :should_checkout_at
  json.url visit_url(visit, format: :json)
end
