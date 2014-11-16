class ArrangementsController < ApplicationController
  before_action :set_arrangement, only: [:show, :edit, :update, :destroy]

  def index
    @arrangements = Arrangement.all
    respond_with(@arrangements)
  end

  def show
    respond_with(@arrangement)
  end

  def new
    @arrangement = Arrangement.new
    respond_with(@arrangement)
  end

  def edit
  end

  def create
    @arrangement = Arrangement.new(arrangement_params)
    @arrangement.save
    respond_with(@arrangement)
  end

  def update
    @arrangement.update(arrangement_params)
    respond_with(@arrangement)
  end

  def destroy
    @arrangement.destroy
    respond_with(@arrangement)
  end

  private
    def set_arrangement
      @arrangement = Arrangement.find(params[:id])
    end

    def arrangement_params
      params.require(:arrangement).permit(:recipe_id)
    end
end
