class RecipeMaterialsController < ApplicationController
  before_action :set_recipe_material, only: [:show, :edit, :update, :destroy]

  def index
    @recipe_materials = RecipeMaterial.all
    respond_to { |format| format.html }
  end

  def show
    respond_to { |format| format.html }
  end

  def new
    @recipe_material = RecipeMaterial.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @recipe_material = RecipeMaterial.new(recipe_material_params)
    @recipe_material.save
    respond_to { |format| format.html }
  end

  def update
    @recipe_material.update(recipe_material_params)
    respond_to { |format| format.html }
  end

  def destroy
    @recipe_material.destroy
    respond_to { |format| format.html }
  end

  private
    def set_recipe_material
      @recipe_material = RecipeMaterial.find(params[:id])
    end

    def recipe_material_params
      params.require(:recipe_material).permit(:recipe_id, :material_id)
    end
end
