class GamesController < ApplicationController

  # Create — POST — /games
  # Show — GET — /games/:id
  # Update — PATCH — /games/:id
  # Index — GET — /games
  def index
    @games = Game.all
  end

  def new
    set_game
  end

  def create
    binding.pry
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    set_game
  end

  private
  
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
end
