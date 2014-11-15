require 'test_helper'

class MoodColorsControllerTest < ActionController::TestCase
  setup do
    @mood_color = mood_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mood_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mood_color" do
    assert_difference('MoodColor.count') do
      post :create, mood_color: { color_id: @mood_color.color_id, mood_id: @mood_color.mood_id }
    end

    assert_redirected_to mood_color_path(assigns(:mood_color))
  end

  test "should show mood_color" do
    get :show, id: @mood_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mood_color
    assert_response :success
  end

  test "should update mood_color" do
    patch :update, id: @mood_color, mood_color: { color_id: @mood_color.color_id, mood_id: @mood_color.mood_id }
    assert_redirected_to mood_color_path(assigns(:mood_color))
  end

  test "should destroy mood_color" do
    assert_difference('MoodColor.count', -1) do
      delete :destroy, id: @mood_color
    end

    assert_redirected_to mood_colors_path
  end
end
