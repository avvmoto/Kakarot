class AddCodeToColors < ActiveRecord::Migration
  def change
    add_column :colors, :name_kana, :string
    add_column :colors, :code, :string
  end
end
