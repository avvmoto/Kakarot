class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.text :massage
      t.integer :mood_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
