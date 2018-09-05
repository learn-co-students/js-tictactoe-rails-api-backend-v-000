class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    @game.save
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find_by_id(params[:id])
    render json: @game
  end

  private

  def game_params
    # params.require(:games).permit(:state => [])
    params.permit(:state => [])
  end
end
