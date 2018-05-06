class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games
  end
  def show
    render json: Game.find(params[:id])
  end
  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end
end
