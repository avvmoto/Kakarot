class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    # @user = User.create_with_omniauth(request.env["omniauth.auth"])
    @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
    
    if @user.persisted?
      sign_in @user
      Tweet.bulk_create(@user)
      redirect_to root_path
    else
      redirect_to user_omniauth_authorize_path(:twitter)
    end
  end
end
