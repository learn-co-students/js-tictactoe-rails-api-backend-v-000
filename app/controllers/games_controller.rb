class GamesController < ApplicationController
  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(game_params)
    render json: @game
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

  private

    def game_params
      params.permit(state: [])
    end

end
