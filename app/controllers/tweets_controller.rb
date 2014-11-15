class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
    respond_to { |format| format.html }
  end

  def show
    respond_to { |format| format.html }
  end

  def new
    @tweet = Tweet.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to @tweet
  end

  def update
    @tweet.update(tweet_params)
    redirect_to @tweet
  end

  def destroy
    @tweet.destroy
    redirect_to @tweet
  end

  private
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:user_id, :massage, :mood_id, :tweet_id)
    end
end
