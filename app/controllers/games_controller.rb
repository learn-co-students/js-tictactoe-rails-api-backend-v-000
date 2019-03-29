class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :getGameById, only: %i[show update]

  def index
    @game = Game.all
    render json: @game
  end 

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end 

  def show
    render json: @game, status: 200
  end

  def update 
    @game.update(game_params)
    render json: @game
  end

  private
  def game_params
    # params.require(:game).permit(:state, array)
    params.permit(state: [])
  end

  def getGameById
    @game = Game.find(params[:id])
  end 
end
