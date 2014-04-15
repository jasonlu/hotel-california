json.array!(@room_types) do |room_type|
  json.extract! room_type, :id, :name, :bed_type, :base_rate, :non_smoking, :pets_welcome, :family_welcome, :beds, :tags, :capacity
  json.url room_type_url(room_type, format: :json)
end
