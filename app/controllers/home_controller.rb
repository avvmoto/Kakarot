class HomeController < ApplicationController
  def index
    unless current_user
      redirect_to user_omniauth_authorize_path(:twitter)
    else
      @tweets = Tweet.where.not(mood_id: nil).limit(3)
      @recipe = Recipe.first #TODO: 後でムードからの処理結果を取ってくるようにする
      @target_tweet = @tweets.first
      @colors = Color.limit(3)
      # @colors = @target_tweet.mood.arrangement.color
    end
  end
end
