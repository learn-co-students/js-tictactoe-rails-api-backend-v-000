class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games
  end

  def show
    set_game
    render json: @game
  end

  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def update
    set_game
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
