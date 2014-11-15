json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :uri, :image_uri, :category, :category_url, :description
  json.url recipe_url(recipe, format: :json)
end
