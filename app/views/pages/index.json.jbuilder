json.array!(@pages) do |page|
  json.extract! page, :id, :id, :integer
  json.url page_url(page, format: :json)
end
