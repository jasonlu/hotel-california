json.array!(@rooms) do |room|
  json.extract! room, :id, :room_number, :room_type_id_id, :bed_type, :base_rate, :non_smoking, :pets_welcome, :family_welcome, :beds, :tags, :capacity
  json.url room_url(room, format: :json)
end
