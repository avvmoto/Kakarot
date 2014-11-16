class HomeController < ApplicationController
  def index
    unless current_user
      redirect_to user_omniauth_authorize_path(:twitter)
    else
      @tweets = Tweet.where.not(mood_id: nil).limit(20)
      @target_tweet = @tweets.sample
      @recipe = @target_tweet.mood.arrangement.recipe
      @recipe = Recipe.all.sample if @recipe.blank?

      ac = @target_tweet.mood.arrangement
      @colors = @target_tweet.mood.arrangement.color.map {|c| c.code.gsub(/^#/, '').downcase  }
      @weights = ArrangementsColor.where(arrangement_id: ac.id).map { |a| sprintf("%02d", a.weight) }
    end
  end
end
