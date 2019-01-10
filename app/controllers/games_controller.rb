class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  # Add your GamesController code here

# Create — POST — /games
# Show — GET — /games/:id
# Update — PATCH — /games/:id
# Index — GET — /games
  # def new
  #   @game = Game.new
  # end

  def create
    # binding.pry
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201   
  end

  def update
    # @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def game_data
    game = Game.find(params[:id])
    render json: gameSerializer.serialize(game)
  end
  private

  
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
  
    params.permit(state: [])   
  end
end
