class ArrangementColorsController < ApplicationController
  before_action :set_arrangement_color, only: [:show, :edit, :update, :destroy]

  def index
    @arrangement_colors = ArrangementColor.all
    respond_with(@arrangement_colors)
  end

  def show
    respond_with(@arrangement_color)
  end

  def new
    @arrangement_color = ArrangementColor.new
    respond_with(@arrangement_color)
  end

  def edit
  end

  def create
    @arrangement_color = ArrangementColor.new(arrangement_color_params)
    @arrangement_color.save
    respond_with(@arrangement_color)
  end

  def update
    @arrangement_color.update(arrangement_color_params)
    respond_with(@arrangement_color)
  end

  def destroy
    @arrangement_color.destroy
    respond_with(@arrangement_color)
  end

  private
    def set_arrangement_color
      @arrangement_color = ArrangementColor.find(params[:id])
    end

    def arrangement_color_params
      params.require(:arrangement_color).permit(:arrangement_id, :color_id)
    end
end
