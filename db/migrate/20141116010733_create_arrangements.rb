class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.integer :recipe_id

      t.timestamps
    end
  end
end
