class MoodColorsController < ApplicationController
  before_action :set_mood_color, only: [:show, :edit, :update, :destroy]

  def index
    @mood_colors = MoodColor.all
    respond_with(@mood_colors)
  end

  def show
    respond_with(@mood_color)
  end

  def new
    @mood_color = MoodColor.new
    respond_with(@mood_color)
  end

  def edit
  end

  def create
    @mood_color = MoodColor.new(mood_color_params)
    @mood_color.save
    respond_with(@mood_color)
  end

  def update
    @mood_color.update(mood_color_params)
    respond_with(@mood_color)
  end

  def destroy
    @mood_color.destroy
    respond_with(@mood_color)
  end

  private
    def set_mood_color
      @mood_color = MoodColor.find(params[:id])
    end

    def mood_color_params
      params.require(:mood_color).permit(:mood_id, :color_id)
    end
end
