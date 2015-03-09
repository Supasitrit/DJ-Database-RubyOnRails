json.array!(@gears) do |gear|
  json.extract! gear, :id, :name, :description, :geartype_id
  json.url gear_url(gear, format: :json)
end
