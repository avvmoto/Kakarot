class RecipeMaterialsController < ApplicationController
  before_action :set_recipe_material, only: [:show, :edit, :update, :destroy]

  # GET /recipe_materials
  # GET /recipe_materials.json
  def index
    @recipe_materials = RecipeMaterial.all
  end

  # GET /recipe_materials/1
  # GET /recipe_materials/1.json
  def show
  end

  # GET /recipe_materials/new
  def new
    @recipe_material = RecipeMaterial.new
  end

  # GET /recipe_materials/1/edit
  def edit
  end

  # POST /recipe_materials
  # POST /recipe_materials.json
  def create
    @recipe_material = RecipeMaterial.new(recipe_material_params)

    respond_to do |format|
      if @recipe_material.save
        format.html { redirect_to @recipe_material, notice: 'Recipe material was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe_material }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_materials/1
  # PATCH/PUT /recipe_materials/1.json
  def update
    respond_to do |format|
      if @recipe_material.update(recipe_material_params)
        format.html { redirect_to @recipe_material, notice: 'Recipe material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_materials/1
  # DELETE /recipe_materials/1.json
  def destroy
    @recipe_material.destroy
    respond_to do |format|
      format.html { redirect_to recipe_materials_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_material
      @recipe_material = RecipeMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_material_params
      params.require(:recipe_material).permit(:recipe_id, :material_id)
    end
end
