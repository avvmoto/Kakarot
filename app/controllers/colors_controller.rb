class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]

  def index
    @colors = Color.all
    respond_to { |format| format.html }
  end

  def show
    respond_to { |format| format.html }
  end

  def new
    @color = Color.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @color = Color.new(color_params)
    @color.save
    respond_to { |format| format.html }
  end

  def update
    @color.update(color_params)
    respond_to { |format| format.html }
  end

  def destroy
    @color.destroy
    respond_to { |format| format.html }
  end

  private
    def set_color
      @color = Color.find(params[:id])
    end

    def color_params
      params.require(:color).permit(:name, :weight)
    end
end
