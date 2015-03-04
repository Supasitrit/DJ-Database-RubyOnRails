json.array!(@djs) do |dj|
  json.extract! dj, :id, :genre, :text, :id, :integer
  json.url dj_url(dj, format: :json)
end
