class CreateMoodColors < ActiveRecord::Migration
  def change
    create_table :mood_colors do |t|
      t.integer :mood_id
      t.integer :color_id

      t.timestamps
    end
  end
end
