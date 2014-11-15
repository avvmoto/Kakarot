class CreateTweetMoods < ActiveRecord::Migration
  def change
    create_table :tweet_moods do |t|
      t.integer :tweet_id
      t.integer :mood_id

      t.timestamps
    end
  end
end
