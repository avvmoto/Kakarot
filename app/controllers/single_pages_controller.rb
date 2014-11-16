class SinglePagesController < ApplicationController
  def home
    unless current_user
      redirect_to user_omniauth_authorize_path(:twitter)
    else
    end
  end
end
