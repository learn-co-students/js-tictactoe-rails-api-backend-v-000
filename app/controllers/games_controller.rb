class GamesController < ApplicationController
  # Add your GamesController code here
  def index
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
  end

  private

  def game_params
    params.require(:state).permit(:state)
  end
end
