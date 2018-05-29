class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.create(game_params)
    render json: game
  end

  def index
    render json: Game.all
  end

  def show
    render json: Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    render json: game.update(game_params)
  end

  private

  def game_params
    params.permit(state: [])
  end

end
