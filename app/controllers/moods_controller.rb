class MoodsController < ApplicationController
  before_action :set_mood, only: [:show, :edit, :update, :destroy]

  def index
    @moods = Mood.all
    respond_to { |format| format.html }
  end

  def show
    respond_to { |format| format.html }
  end

  def new
    @mood = Mood.new
    respond_to { |format| format.html }
  end

  def edit
  end

  def create
    @mood = Mood.new(mood_params)
    @mood.save
    respond_to { |format| format.html }
  end

  def update
    @mood.update(mood_params)
    respond_to { |format| format.html }
  end

  def destroy
    @mood.destroy
    respond_to { |format| format.html }
  end

  private
    def set_mood
      @mood = Mood.find(params[:id])
    end

    def mood_params
      params.require(:mood).permit(:name)
    end
end
