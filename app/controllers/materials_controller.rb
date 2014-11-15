class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

  def index
    @materials = Material.all
    respond_to { |format| format.html }
  end

  def show
    respond_to { |format| format.html }
  end

  def new
    @material = Material.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @material = Material.new(material_params)
    @material.save
    respond_to { |format| format.html }
  end

  def update
    @material.update(material_params)
    respond_to { |format| format.html }
  end

  def destroy
    @material.destroy
    respond_to { |format| format.html }
  end

  private
    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.require(:material).permit(:name)
    end
end
