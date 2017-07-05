class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.json { render json: @game }
    end
  end

  def update
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end
end
