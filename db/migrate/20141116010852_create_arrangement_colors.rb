class CreateArrangementColors < ActiveRecord::Migration
  def change
    create_table :arrangements_colors do |t|
      t.integer :arrangement_id
      t.integer :color_id

      t.timestamps
    end

    add_index "arrangements_colors", ["arrangement_id", "color_id"], name: "i1", unique: true, using: :btree
  end
end
