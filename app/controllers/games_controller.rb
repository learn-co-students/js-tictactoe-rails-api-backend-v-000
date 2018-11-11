class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end


  private
  def game_params
    params.require(:game).permit(:state)
  end

end
