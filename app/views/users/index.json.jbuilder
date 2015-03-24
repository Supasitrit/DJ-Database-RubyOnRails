json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :text, :last_name, :text, :id, :integer
  json.url user_url(user, format: :json)
end
