class SinglePagesController < ApplicationController
  def home
    unless current_user
      # redirect_to user_sign_in_
    end
  end
end
