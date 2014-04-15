json.array!(@room_occupations) do |room_occupation|
  json.extract! room_occupation, :id, :booking_id_id, :start_at, :end_at, :days
  json.url room_occupation_url(room_occupation, format: :json)
end
