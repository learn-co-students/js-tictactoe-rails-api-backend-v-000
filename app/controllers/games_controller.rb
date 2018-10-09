class GamesController < ApplicationController

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    find_game
    render json: @game
  end

  def update
    find_game
    @game.update(state: params[:state])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def find_game
    @game = Game.find_by(id: params[:id])
  end

  # def game_params
  #   params.require(:product).permit(:state)
  # end

end
