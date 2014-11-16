class AddPostAtToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :posted_at, :datetime
  end
end
