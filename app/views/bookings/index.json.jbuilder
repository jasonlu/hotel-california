json.array!(@bookings) do |booking|
  json.extract! booking, :id, :room_id, :visit_id, :booking_date, :rate
  json.url booking_url(booking, format: :json)
end
