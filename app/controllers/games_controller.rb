class GamesController < ApplicationController

  # Create — POST — /games
  # Show — GET — /games/:id
  # Update — PATCH — /games/:id
  # Index — GET — /games
  def index
    @games = Game.all
    render json: @games
  end

  def new
    set_game
  end

  def create
    # binding.pry
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    set_game
    render json: @game
  end

  def edit
    set_game
  end

  def update
    set_game 
    @game.update(state: params[:state])
    render json: @game 
  end

  private
  
  def set_game
    @game = Game.find(params[:id])
  end
end
