json.array!(@discount_rules) do |discount_rule|
  json.extract! discount_rule, :id, :rules, :percentage_rate, :fixed_rate
  json.url discount_rule_url(discount_rule, format: :json)
end
