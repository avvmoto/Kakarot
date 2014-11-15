json.array!(@moods) do |mood|
  json.extract! mood, :id, :name
  json.url mood_url(mood, format: :json)
end
