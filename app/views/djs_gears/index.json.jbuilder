json.array!(@djs_gears) do |djs_gear|
  json.extract! djs_gear, :id
  json.url djs_gear_url(djs_gear, format: :json)
end
