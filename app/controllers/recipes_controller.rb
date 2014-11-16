class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    respond_to { |format| format.html }
  end

  def show
  end

  def new
    @recipe = Recipe.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    respond_to { |format| format.html{render action: 'show'} }
  end

  def update
    @recipe.update(recipe_params)
    respond_to { |format| format.html }
  end

  def destroy
    @recipe.destroy
    respond_to { |format| format.html }
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:title, :uri, :image_uri, :category, :category_url, :description)
    end
end
