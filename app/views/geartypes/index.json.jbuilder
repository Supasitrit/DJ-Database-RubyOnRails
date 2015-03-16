json.array!(@geartypes) do |geartype|
  json.extract! geartype, :id
  json.url geartype_url(geartype, format: :json)
end
