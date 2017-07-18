class GamesController < ApplicationController
  def create
    game = Game.new(game_params)
    if game.save
      render json: game
    end
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: game
    end
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params

    params.permit(:state => [])
  end

end
