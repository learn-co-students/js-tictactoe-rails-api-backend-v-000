class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    render json: Game.create(state: params[:state])
  end

  def show
    render json: Game.find(params[:id])
  end

  def update
    Game.find(params[:id]).update(state: params[:state])
  end

  def index
    render json: Game.all
  end

private

  def game_params
    params.require(:game).permit(:state)
  end
end
