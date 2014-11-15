require 'test_helper'

class TweetMoodsControllerTest < ActionController::TestCase
  setup do
    @tweet_mood = tweet_moods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweet_moods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweet_mood" do
    assert_difference('TweetMood.count') do
      post :create, tweet_mood: { mood_id: @tweet_mood.mood_id, tweet_id: @tweet_mood.tweet_id }
    end

    assert_redirected_to tweet_mood_path(assigns(:tweet_mood))
  end

  test "should show tweet_mood" do
    get :show, id: @tweet_mood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweet_mood
    assert_response :success
  end

  test "should update tweet_mood" do
    patch :update, id: @tweet_mood, tweet_mood: { mood_id: @tweet_mood.mood_id, tweet_id: @tweet_mood.tweet_id }
    assert_redirected_to tweet_mood_path(assigns(:tweet_mood))
  end

  test "should destroy tweet_mood" do
    assert_difference('TweetMood.count', -1) do
      delete :destroy, id: @tweet_mood
    end

    assert_redirected_to tweet_moods_path
  end
end
