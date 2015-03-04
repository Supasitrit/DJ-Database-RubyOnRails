json.array!(@admins) do |admin|
  json.extract! admin, :id, :username, :text, :email, :text, :id, :integer
  json.url admin_url(admin, format: :json)
end
