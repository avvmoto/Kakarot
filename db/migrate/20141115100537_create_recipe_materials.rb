class CreateRecipeMaterials < ActiveRecord::Migration
  def change
    create_table :recipe_materials do |t|
      t.integer :recipe_id
      t.integer :material_id

      t.timestamps
    end
  end
end
