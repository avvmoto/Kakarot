class HomeController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC').limit(20)
    @target_tweet = Tweet.find(1)
    @colors = @target_tweet.mood.arrangement.color
  end
end
