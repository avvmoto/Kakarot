json.array!(@arrangements) do |arrangement|
  json.extract! arrangement, :id, :recipe_id
  json.url arrangement_url(arrangement, format: :json)
end
