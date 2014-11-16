class SinglePagesController < ApplicationController
  def home
    unless current_user
      redirect_to user_omniauth_authorize_path(:twitter)
    else
      @tweets = Tweet.where.not(mood_id: nil).limit(3)
    end
  end
end
