class GamesController < ApplicationController
  def create
    @game = Game.create(state: game_params)
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(state: game_params)
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

  private

    def game_params
      params.require(:state)
    end

end
