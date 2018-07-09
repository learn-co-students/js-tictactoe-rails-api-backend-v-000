class GamesController < ApplicationController

  # GET /games
  def index
    games = Game.all
    render json: games
  end

  # GET /games/:id
  def show
    game = Game.find(params[:id])
    render json: game
  end

  # POST /games
  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  # PATCH /games/:id
  def update
    game = Game.find(params[:id])
    game.update(game_params)
    render json: game
  end

private
  def game_params
    params.permit(state: [])
  end

end
