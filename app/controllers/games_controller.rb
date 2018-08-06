class GamesController < ApplicationController
  
  def index
    @games = Game.all
    render json: @games
  end

  def create
    Game.create(state: params[:state])
    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    game = Game.find(params[:id])
    game.update(state: params[:state])
    redirect_to games_path
  end

  # private
  # def game_params
  #   params.require(:game).permit(:state)
  # end
end
