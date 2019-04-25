class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games
  end
  
  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show
    render json: get_game, status: 200
  end

  def update
    @game = get_game.update(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(state: [])
  end

  def get_game
    Game.find(params[:id])
  end
end
