json.array!(@mood_colors) do |mood_color|
  json.extract! mood_color, :id, :mood_id, :color_id
  json.url mood_color_url(mood_color, format: :json)
end
