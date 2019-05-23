class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def new
  end

  def create
    #uses the serialize method in the Game model
    Game.create(state: params[:state])
  end

  def update
    @game = Game.find(params[:id])
    @game.update!(state: params[:state])
  end

  private

  def game_params
    params.require(:state).permit(:state)
  end
end
