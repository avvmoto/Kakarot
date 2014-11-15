json.array!(@recipe_materials) do |recipe_material|
  json.extract! recipe_material, :id, :recipe_id, :material_id
  json.url recipe_material_url(recipe_material, format: :json)
end
