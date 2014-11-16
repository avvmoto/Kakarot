json.array!(@arrangement_colors) do |arrangement_color|
  json.extract! arrangement_color, :id, :arrangement_id, :color_id
  json.url arrangement_color_url(arrangement_color, format: :json)
end
