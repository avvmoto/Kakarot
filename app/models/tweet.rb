class Tweet < ActiveRecord::Base
  belongs_to :user

  def self.bulk_create(user)
    user ||= User.first

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TW_CONSUMER_KEY']
      config.consumer_secret = ENV['TW_CONSUMER_SECRET_KEY']
      config.access_token = ENV['TW_ACCESS_TOKEN']
      config.access_token_secret = ENV['TW_ACCESS_TOKEN_SECRET_KEY']
    end

    client.user(user.twitter_id.to_i)
    client.user_timeline(count: 20).each do |_tweet|
      tweet = Tweet.new
      tweet.user_id = user.id
      tweet.massage = _tweet.text
      tweet.tweet_id = _tweet.id
      tweet.created_at = _tweet.created_at
      tweet.updated_at = _tweet.created_at
      tweet.save
    end
  end
end
