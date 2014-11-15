json.array!(@users) do |user|
  json.extract! user, :id, :twitter_id, :twitter_token
  json.url user_url(user, format: :json)
end
