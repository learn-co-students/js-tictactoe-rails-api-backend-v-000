class GamesController < ApplicationController
  before_action :set_game, only: [:update, :show]
  # Add your GamesController code here
 #  You'll need to set up routes and actions for the following API endpoints:
 #
 # Create — POST — /games
 # Show — GET — /games/:id
 # Update — PATCH — /games/:id
 # Index — GET — /games
 def create
   @game = Game.create(game_params)
   render json: @game, status: 200


 end


  def show
   render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end


  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end
end
