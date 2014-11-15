require 'test_helper'

class RecipeMaterialsControllerTest < ActionController::TestCase
  setup do
    @recipe_material = recipe_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_material" do
    assert_difference('RecipeMaterial.count') do
      post :create, recipe_material: { material_id: @recipe_material.material_id, recipe_id: @recipe_material.recipe_id }
    end

    assert_redirected_to recipe_material_path(assigns(:recipe_material))
  end

  test "should show recipe_material" do
    get :show, id: @recipe_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_material
    assert_response :success
  end

  test "should update recipe_material" do
    patch :update, id: @recipe_material, recipe_material: { material_id: @recipe_material.material_id, recipe_id: @recipe_material.recipe_id }
    assert_redirected_to recipe_material_path(assigns(:recipe_material))
  end

  test "should destroy recipe_material" do
    assert_difference('RecipeMaterial.count', -1) do
      delete :destroy, id: @recipe_material
    end

    assert_redirected_to recipe_materials_path
  end
end
