json.array!(@payments) do |payment|
  json.extract! payment, :id, :customer_id, :visit_id, :method, :credit_card_no, :paid, :paid_at
  json.url payment_url(payment, format: :json)
end
