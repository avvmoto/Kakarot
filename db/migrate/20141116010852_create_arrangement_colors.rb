class CreateArrangementColors < ActiveRecord::Migration
  def change
    create_table :arrangement_colors do |t|
      t.integer :arrangement_id
      t.integer :color_id

      t.timestamps
    end
  end
end
