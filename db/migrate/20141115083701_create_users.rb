class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_id
      t.string :twitter_token

      t.timestamps
    end
  end
end
