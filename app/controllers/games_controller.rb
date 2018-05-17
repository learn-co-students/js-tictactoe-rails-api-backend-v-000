class GamesController < ApplicationController

  def create # POST /games
    game = Game.create(game_params)
    render json: game
  end

  def show # GET /games/:id
    game = Game.find(params[:id])
    render json: game
  end

  def update # PATCH /games/:id
    game = Game.find(params[:id])
    game.update(game_params)
    render json: game
  end

  def index # GET /games
    games = Game.all
    render json: games
  end

  private

  def game_params
    params.permit(:state => [])
  end

end
