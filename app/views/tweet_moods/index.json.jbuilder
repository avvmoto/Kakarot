json.array!(@tweet_moods) do |tweet_mood|
  json.extract! tweet_mood, :id, :tweet_id, :mood_id
  json.url tweet_mood_url(tweet_mood, format: :json)
end
