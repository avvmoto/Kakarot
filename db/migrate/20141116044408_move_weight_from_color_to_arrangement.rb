class MoveWeightFromColorToArrangement < ActiveRecord::Migration
  def change
    remove_column :colors, :weight
    add_column :arrangements_colors, :weight, :integer
  end
end
