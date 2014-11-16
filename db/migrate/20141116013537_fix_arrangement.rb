class FixArrangement < ActiveRecord::Migration
  def change
    remove_column :arrangements, :recipe_id
    add_column :arrangements, :mood_id, :integer
    add_index :arrangements, :mood_id
  end
end
