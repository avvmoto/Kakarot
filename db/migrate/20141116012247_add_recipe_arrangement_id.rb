class AddRecipeArrangementId < ActiveRecord::Migration
  def change
    add_column :recipes, :arrangement_id, :integer
    add_index :recipes, :arrangement_id
  end
end
