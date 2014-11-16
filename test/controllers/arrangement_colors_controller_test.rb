require 'test_helper'

class ArrangementColorsControllerTest < ActionController::TestCase
  setup do
    @arrangement_color = arrangement_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arrangement_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arrangement_color" do
    assert_difference('ArrangementColor.count') do
      post :create, arrangement_color: { arrangement_id: @arrangement_color.arrangement_id, color_id: @arrangement_color.color_id }
    end

    assert_redirected_to arrangement_color_path(assigns(:arrangement_color))
  end

  test "should show arrangement_color" do
    get :show, id: @arrangement_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arrangement_color
    assert_response :success
  end

  test "should update arrangement_color" do
    patch :update, id: @arrangement_color, arrangement_color: { arrangement_id: @arrangement_color.arrangement_id, color_id: @arrangement_color.color_id }
    assert_redirected_to arrangement_color_path(assigns(:arrangement_color))
  end

  test "should destroy arrangement_color" do
    assert_difference('ArrangementColor.count', -1) do
      delete :destroy, id: @arrangement_color
    end

    assert_redirected_to arrangement_colors_path
  end
end
