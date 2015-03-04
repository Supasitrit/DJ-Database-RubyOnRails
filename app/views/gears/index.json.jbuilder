json.array!(@gears) do |gear|
  json.extract! gear, :id, :type, :text, :name, :text, :details, :text, :id, :integer
  json.url gear_url(gear, format: :json)
end
