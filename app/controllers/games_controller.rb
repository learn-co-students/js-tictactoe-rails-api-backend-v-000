class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :destroy, :update]
  def create
    byebug
    game = Game.create(state: game_params)

    render json: game
  end

  def show

  end

  def update

  end

  def index

  end

  private

  def game_params
    params.require(:game).permit(:state) 
  end

  def find_game
    game = Game.find(params[:id])
  end

end
