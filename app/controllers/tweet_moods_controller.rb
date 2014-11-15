class TweetMoodsController < ApplicationController
  before_action :set_tweet_mood, only: [:show, :edit, :update, :destroy]

  def index
    @tweet_moods = TweetMood.all
    respond_with(@tweet_moods)
  end

  def show
    respond_with(@tweet_mood)
  end

  def new
    @tweet_mood = TweetMood.new
    respond_with(@tweet_mood)
  end

  def edit
  end

  def create
    @tweet_mood = TweetMood.new(tweet_mood_params)
    @tweet_mood.save
    respond_with(@tweet_mood)
  end

  def update
    @tweet_mood.update(tweet_mood_params)
    respond_with(@tweet_mood)
  end

  def destroy
    @tweet_mood.destroy
    respond_with(@tweet_mood)
  end

  private
    def set_tweet_mood
      @tweet_mood = TweetMood.find(params[:id])
    end

    def tweet_mood_params
      params.require(:tweet_mood).permit(:tweet_id, :mood_id)
    end
end
