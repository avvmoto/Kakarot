class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :title
      t.string :uri
      t.string :image_uri
      t.string :category
      t.string :category_url
      t.text :description

      t.timestamps
    end
  end
end
